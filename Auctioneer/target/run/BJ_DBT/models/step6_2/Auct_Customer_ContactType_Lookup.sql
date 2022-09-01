
  
  if object_id ('"stg"."Auct_Customer_ContactType_Lookup__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_Customer_ContactType_Lookup__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_Customer_ContactType_Lookup__dbt_tmp"','U') is not null
    begin
    drop table "stg"."Auct_Customer_ContactType_Lookup__dbt_tmp"
    end


   EXEC('create view stg.Auct_Customer_ContactType_Lookup__dbt_tmp_temp_view as
    

-- DECLARE @BidderContactType AS VARCHAR(100), @ConsignorContactType AS VARCHAR(100);
-- SET @BidderContactType=''Bidder'';
-- SET @ConsignorContactType=''Consignor'';
With Auct_AuctionBidder_Ex AS (
	 select * from stg.[Auct_AuctionBidder_FinalView]
),
Auct_Bidder_Ex AS (
	 select * from stg.[Auct_Bidder_FinalView]
),
Auct_Consignment_Ex AS (
	 select * from stg.[Auct_Consignment_FinalView]
),
Auct_ContactContact_Ex AS (
	 select * from stg.[Auct_ContactContact_FinalView]
),
Auct_ContactType_Ex AS (
	 select * from stg.[Auct_ContactType_FinalView]
),
Auct_Auction_CTE AS (
    SELECT
        [AuctionID],
        [Auction_Skey], 
        ISNULL([City], ''UNRECORDED'') AS [AuctionCity],
        ISNULL(NULLIF([Year], ''0''), YEAR([AuctionBegins])) AS [AuctionYear],
        [AuctionBegins], 
        [AuctionEnds],
        LAG([AuctionBegins]) OVER(ORDER BY [Year], [AuctionBegins], [AuctionEnds], [AuctionID]) AS [PreviousAuctionBegins],
        LAG([AuctionEnds]) OVER(ORDER BY [Year], [AuctionBegins], [AuctionEnds], [AuctionID]) AS [PreviousAuctionEnds]
    FROM [dbo].[Auct_Auction_DM] -- (Update) replaced [Auct_Auction_Ex] LEFT JOIN [Auct_AuctionLocation_Ex] with [dbo].[Auct_Auction_DM]
)
-- FOR [PresumedContactType] of Customer in Auct_Consignment and Auct_AuctionBidder table
, Auct_Customer_ContactType_CTE1 AS (
    SELECT 
        [CustomerAccountID],
        [AuctionID],
        STRING_AGG([ContactType], '','') WITHIN GROUP (ORDER BY [Created]) AS [PresumedContactType],
        MIN([Created]) AS [CreatedPresumedContactType]
    FROM (
        SELECT 
            [CustomerAccountID],
            [AuctionID],
            [ContactType],
            [Created],
            ROW_NUMBER() OVER(
                PARTITION BY [CustomerAccountID], [AuctionID], [ContactType]
                ORDER BY [CustomerAccountID], [AuctionID], [ContactType], [Created]
            ) AS [RowNumber]
        FROM (
            SELECT 
                DISTINCT [CustomerAccountID],
                [AuctionID],
                ''Consignor''  [ContactType],
                [Created]
            FROM [Auct_Consignment_Ex]
            UNION 
            SELECT 
                DISTINCT bid.[CustomerAccountID],
                aucbid.[AuctionID],
                ''Bidder'' [ContactType],
                ISNULL(aucbid.[RegistrationDate], aucbid.[Created])
            FROM [Auct_AuctionBidder_Ex] aucbid 
            LEFT JOIN [Auct_Bidder_Ex] bid 
                ON aucbid.[BidderID]=bid.[BidderID]
            ) AS temp1 
            WHERE COALESCE([CustomerAccountID], [AuctionID]) IS NOT NULL
                AND [AuctionID] IN (SELECT DISTINCT [AuctionID] FROM [dbo].[Auct_Auction_DM])
        ) AS temp2
    WHERE [RowNumber]=1
    GROUP BY [CustomerAccountID], [AuctionID]
)
-- SELECT * FROM Auct_Customer_ContactType_stg1 WHERE [RowNumber]>1;
-- SELECT * FROM Auct_Customer_ContactType_stg1 WHERE [CustomerAccountID]=1138 AND [AuctionID]=1
-- SELECT * FROM Auct_Customer_ContactType_stg1 ORDER BY [AuctionID], [CustomerAccountID];
-- For [ContactType] IN [Auct_ContactContact_Ex] AND [Auct_ContactType_Ex]
, Auct_Customer_ContactType_CTE2_Initial AS (
    SELECT 
        [CustomerAccountID],
        [ContactType],
        [CreatedContactType],
        [AuctionID] AS [PresumedAuctionID],
        [PreviousAuctionEnds],
        [AuctionEnds],
        ROW_NUMBER() OVER(
            PARTITION BY [CustomerAccountID], [ContactType], [CreatedContactType], [AuctionID], [PreviousAuctionEnds], [AuctionEnds]
            ORDER BY [CustomerAccountID], [ContactType], [CreatedContactType], [AuctionID], [PreviousAuctionEnds], [AuctionEnds]
        ) AS [RowNumber]
    FROM (
        SELECT 
            concon.[CustomerAccountID],
            -- (Update) conty.[Name] to conty.[ContactType]
            CASE 
                WHEN conty.[Name] IN (''ABSENTEE'')
                    THEN ''Bidder-Absentee''
                WHEN conty.[Name] IN (''AUTOMOBILIA BIDDER'')
                    THEN ''Bidder-Automobilia''
                WHEN conty.[Name] IN (''BIDDER'', ''SEASON PASS BIDDER'', ''SOCIAL BIDDER'', ''BIDDER INFO'', ''BIDDER INFO PALM BEACH'')
                    THEN ''Bidder''
                WHEN conty.[Name] IN (''VIP BIDDER'', ''VIP CUSTOMER'', ''VIP HOUSTON'', ''VIP LAS VEGAS'', ''VIP NORTHEAST'', ''VIP ORANGE COUNTY'', ''VIP PALM BEACH'', ''VIP SCOTTSDALE'', 
                                        ''VIP GUEST RENO/TAHOE'', ''VIP GUEST ALL'')
                    THEN ''Bidder-VIPPackages''
                WHEN conty.[Name] IN (''CRAIG''''S VIP GUEST'')
                    THEN ''Bidder-VIPCraigJackson''''sBox''
                WHEN conty.[Name] IN (''CONSIGNOR'', ''CONSIGNMENT INFO PALM BEACH'', ''CONSIGNMENT INFO'')
                    THEN ''Consignor''
                ELSE NULL
            END AS [ContactType],
            CASE 
                WHEN conty.[Name] IN (''ABSENTEE'', ''AUTOMOBILIA BIDDER'', ''BIDDER'', ''SEASON PASS BIDDER'', ''SOCIAL BIDDER'', ''BIDDER INFO'', ''BIDDER INFO PALM BEACH'', 
                                        ''VIP BIDDER'', ''VIP CUSTOMER'', ''VIP HOUSTON'', ''VIP LAS VEGAS'', ''VIP NORTHEAST'', ''VIP ORANGE COUNTY'', ''VIP PALM BEACH'', ''VIP SCOTTSDALE'', ''VIP GUEST RENO/TAHOE'', ''VIP GUEST ALL'', 
                                        ''CRAIG''''S VIP GUEST'', ''CONSIGNOR'', ''CONSIGNMENT INFO PALM BEACH'', ''CONSIGNMENT INFO'')
                THEN CAST(concon.[Created] AS DATETIME)
                ELSE NULL
            END AS [CreatedContactType]
        FROM [Auct_ContactContact_Ex] concon 
        LEFT JOIN [Auct_ContactType_Ex] conty
            ON concon.[ContactTypeID]=conty.[ContactTypeID]
        ) AS temp1
        ,  Auct_Auction_CTE
    WHERE [ContactType] IS NOT NULL AND [CreatedContactType] IS NOT NULL
        AND [CreatedContactType] BETWEEN [PreviousAuctionEnds] AND [AuctionEnds]
)
, Auct_Customer_ContactType_CTE2_Final AS (
    SELECT 
        [CustomerAccountID],
        [PresumedAuctionID],
        -- [ContactType],
        STRING_AGG([ContactType], '','') WITHIN GROUP (ORDER BY [MinCreatedContactType] DESC) AS [ContactType],
        [MinCreatedContactType]
    FROM (
        SELECT
            cxconty1.[CustomerAccountID],
            cxconty1.[PresumedAuctionID],
            cxconty1.[ContactType],
            cxconty1.[CreatedContactType],
            temp1.[MinCreatedContactType],
            ROW_NUMBER() OVER(
                PARTITION BY cxconty1.[CustomerAccountID], cxconty1.[PresumedAuctionID], cxconty1.[ContactType], temp1.[MinCreatedContactType]
                ORDER BY cxconty1.[CustomerAccountID], cxconty1.[PresumedAuctionID], cxconty1.[ContactType], temp1.[MinCreatedContactType]
            ) AS [NewRowNumber]
        FROM Auct_Customer_ContactType_CTE2_Initial cxconty1
        INNER JOIN (
            SELECT 
                [CustomerAccountID], 
                [PresumedAuctionID], 
                MIN([CreatedContactType]) AS [MinCreatedContactType]
            FROM Auct_Customer_ContactType_CTE2_Initial
            GROUP BY [CustomerAccountID], [PresumedAuctionID]
            ) AS temp1
        ON cxconty1.[CustomerAccountID]=temp1.[CustomerAccountID]
            AND cxconty1.[PresumedAuctionID]=temp1.[PresumedAuctionID]
        WHERE cxconty1.[RowNumber]=1
    ) AS temp2
    WHERE [NewRowNumber]=1
    GROUP BY [CustomerAccountID], [PresumedAuctionID], [MinCreatedContactType]
)
-- SELECT MAX(LEN([ContactType])) FROM Auct_Customer_ContactType_CTE2_Final; -- LEN([ContactType])=66
-- SELECT * FROM Auct_Customer_ContactType_CTE2_Final WHERE LEN([ContactType])=66;
-- SELECT [CustomerAccountID], [PresumedAuctionID], COUNT(*) FROM Auct_Customer_ContactType_CTE2_Final GROUP BY [CustomerAccountID], [PresumedAuctionID] ORDER BY COUNT(*) DESC;
, Auct_Customer_ContactType_merged_Initial AS (
    SELECT 
        [CustomerAccountID],
        [AuctionID],
        [PresumedContactType] AS [ContactType],
        [CreatedPresumedContactType] AS [CreatedContactType]
    FROM Auct_Customer_ContactType_CTE1
    WHERE [CustomerAccountID] IS NOT NULL
    UNION
    SELECT 
        [CustomerAccountID],
        [PresumedAuctionID],
        [ContactType],
        [MinCreatedContactType]
    FROM Auct_Customer_ContactType_CTE2_Final
)
, Auct_Customer_ContactType_merged_Inter AS (
    SELECT 
        [CustomerAccountID],
        [AuctionID],
        [NeedFixContactType] AS [ContactType],
        [CreatedContactType],
        ROW_NUMBER() OVER(
            PARTITION BY [CustomerAccountID], [AuctionID], [NeedFixContactType], [CreatedContactType]
            ORDER BY [CustomerAccountID], [AuctionID], [NeedFixContactType], [CreatedContactType]
        ) AS [NewRowNumber]
    FROM (
        SELECT 
            [CustomerAccountID],
            [AuctionID],
            VALUE AS [NeedFixContactType],
            [CreatedContactType]
        FROM (
            SELECT 
                [CustomerAccountID],
                [AuctionID],
                -- [ContactType],
                STRING_AGG([ContactType], '','') WITHIN GROUP (ORDER BY [MinCreatedContactType] DESC) AS [ContactType],
                [MinCreatedContactType] AS [CreatedContactType]
            FROM (
                SELECT 
                    cxcontymrg1.[CustomerAccountID],
                    cxcontymrg1.[AuctionID],
                    cxcontymrg1.[ContactType],
                    cxcontymrg1.[CreatedContactType],
                    temp1.[MinCreatedContactType],
                    ROW_NUMBER() OVER(
                        PARTITION BY cxcontymrg1.[CustomerAccountID], cxcontymrg1.[AuctionID], cxcontymrg1.[ContactType], cxcontymrg1.[CreatedContactType], temp1.[MinCreatedContactType]
                        ORDER BY cxcontymrg1.[CustomerAccountID], cxcontymrg1.[AuctionID], cxcontymrg1.[ContactType], cxcontymrg1.[CreatedContactType], temp1.[MinCreatedContactType]
                    ) AS [RowNumber]
                FROM Auct_Customer_ContactType_merged_Initial cxcontymrg1
                INNER JOIN (
                    SELECT 
                        [CustomerAccountID],
                        [AuctionID],
                        MIN([CreatedContactType]) AS [MinCreatedContactType]
                    FROM Auct_Customer_ContactType_merged_Initial
                    GROUP BY [CustomerAccountID], [AuctionID]
                    ) AS temp1 
                    ON cxcontymrg1.[CustomerAccountID]=temp1.[CustomerAccountID]
                        AND cxcontymrg1.[AuctionID]=temp1.[AuctionID]
                ) AS temp2
                WHERE [RowNumber]=1
            GROUP BY [CustomerAccountID], [AuctionID], [MinCreatedContactType]
        ) AS temp3
        OUTER APPLY STRING_SPLIT([ContactType], '','')
    ) AS temp4
)
, Auct_Customer_ContactType_merged_Pivot AS (
    SELECT
        [CustomerAccountID],
        [AuctionID],
        [CreatedContactType],
        [Consignor],
        [Bidder],
        [Bidder-VIPPackages], 
        [Bidder-VIPCraigJackson''sBox], 
        [Bidder_Absentee], 
        [Bidder-Automobilia],
        CASE WHEN [Consignor]=1 THEN 1 ELSE 0 END AS [ConsignorFlag],
        CASE WHEN COALESCE([Bidder], [Bidder-VIPPackages], [Bidder-VIPCraigJackson''sBox], [Bidder_Absentee], [Bidder-Automobilia])=1 THEN 1 ELSE 0 END AS [AuctionBidderFlag]
    FROM (
        SELECT 
            [CustomerAccountID],
            [AuctionID],
            [CreatedContactType],
            CASE WHEN [Consignor] IN (''Consignor'') THEN 1 ELSE 0 END AS [Consignor],
            CASE WHEN [Bidder] IN (''Bidder'') THEN 1 ELSE 0 END AS [Bidder],
            CASE WHEN [Bidder-VIPPackages] IN (''Bidder-VIPPackages'') THEN 1 ELSE 0 END AS [Bidder-VIPPackages],
            CASE WHEN [Bidder-VIPCraigJackson''sBox] IN (''Bidder-VIPCraigJackson''''sBox'') THEN 1 ELSE 0 END AS [Bidder-VIPCraigJackson''sBox],
            CASE WHEN [Bidder_Absentee] IN (''Bidder_Absentee'') THEN 1 ELSE 0 END AS [Bidder_Absentee],
            CASE WHEN [Bidder-Automobilia] IN (''Bidder-Automobilia'') THEN 1 ELSE 0 END AS [Bidder-Automobilia]
        FROM (
            SELECT 
                [CustomerAccountID],
                [AuctionID],
                [CreatedContactType],
                [Consignor],
                [Bidder],
                [Bidder-VIPPackages], 
                [Bidder-VIPCraigJackson''sBox], 
                [Bidder_Absentee], 
                [Bidder-Automobilia]
            FROM (
                SELECT 
                    [CustomerAccountID],
                    [AuctionID],
                    [ContactType] AS Col,
                    [ContactType] AS Val,
                    [CreatedContactType]
                FROM Auct_Customer_ContactType_merged_Inter
                WHERE [NewRowNumber]=1
                ) AS SRC1 
            -- FOR [ContactType]
            PIVOT (
                MAX(Val) FOR Col IN ([Consignor], [Bidder], [Bidder-VIPPackages], [Bidder-VIPCraigJackson''sBox], [Bidder_Absentee], [Bidder-Automobilia])
            ) AS PVT1
        ) AS temp1
    ) AS temp2
)
SELECT 
    [CustomerAccountID],
    [AuctionID],
    [CreatedContactType],
    [Consignor],
    [Bidder],
    [Bidder-VIPPackages],
    [Bidder-VIPCraigJackson''sBox],
    [Bidder_Absentee],
    [Bidder-Automobilia],
    [ConsignorFlag],
    [AuctionBidderFlag]
FROM Auct_Customer_ContactType_merged_Pivot
    ');

  CREATE TABLE "stg"."Auct_Customer_ContactType_Lookup__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_Customer_ContactType_Lookup__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."Auct_Customer_ContactType_Lookup__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_Customer_ContactType_Lookup__dbt_tmp_temp_view"
    end


