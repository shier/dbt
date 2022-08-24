{{ config(materialized='table',schema='stg')}}

DECLARE @MaxValidDate AS DATETIME;
SET @MaxValidDate='9999-12-31';

With Auct_AddressAssignments_Ex AS (
	 select * from stg.[Auct_AddressAssignments_FinalView]
),
Auct_AddressStatus_Ex AS (
	 select * from stg.[Auct_AddressStatus_FinalView]
),
Auct_AddressTypes_Ex AS (
	 select * from stg.[Auct_AddressTypes_FinalView]
),
Auct_AuctionBidder_Ex AS (
	 select * from stg.[Auct_AuctionBidder_FinalView]
),
Auct_Auction_Ex AS (
	 select * from stg.[Auct_Auction_FinalView]
),
Auct_Bidder_Ex AS (
	 select * from stg.[Auct_Bidder_FinalView]
),
Auct_Consignment_Ex AS (
	 select * from stg.[Auct_Consignment_FinalView]
),
Auct_Country_Ex AS (
	 select * from stg.[Auct_Country_FinalView]
),

first_spotted_Address AS (
    SELECT 
        [AddressID],
        [Created]
    FROM (
        SELECT 
            [AddressID],
            [Created],
            ROW_NUMBER() OVER(
                PARTITION BY [AddressID]
                ORDER BY [Created]
            ) AS [RowNumber]
        FROM (
            SELECT 
                DISTINCT consgt.[AddressID],
                CASE WHEN consgt.[Created] IS NOT NULL 
                    THEN 
                        CASE WHEN consgt.[Created]<=auc.[AuctionBegins] 
                            THEN consgt.[Created]
                        ELSE auc.[AuctionBegins] 
                    END
                ELSE auc.[AuctionBegins] 
                END AS [Created]
            FROM [Auct_Consignment_Ex] consgt -- (Update) might need replace [Auct_Consignment_Ex]
            LEFT JOIN [Auct_Auction_Ex] auc -- (Update) might need replace [Auct_Auction_Ex]
                ON consgt.[AuctionID]=auc.[AuctionID]
            WHERE consgt.[AddressID] IS NOT NULL AND (CASE WHEN consgt.[Created] IS NOT NULL THEN CASE WHEN consgt.[Created]<=auc.[AuctionBegins] THEN consgt.[Created] ELSE auc.[AuctionBegins] END ELSE auc.[AuctionBegins] END) IS NOT NULL
            UNION 
            SELECT 
                aucbid.[AddressID],
                CASE WHEN aucbid.[Created] IS NOT NULL 
                    THEN 
                        CASE WHEN aucbid.[Created]<=auc.[AuctionBegins] 
                            THEN aucbid.[Created]
                        ELSE auc.[AuctionBegins] 
                    END
                ELSE auc.[AuctionBegins] 
                END AS [Created]
            FROM [Auct_AuctionBidder_Ex] aucbid -- (Update) might need replace [Auct_AuctionBidder_Ex]
            LEFT JOIN [Auct_Auction_Ex] auc -- (Update) might need replace [Auct_Auction_Ex]
                ON aucbid.[AuctionID]=auc.[AuctionID]
            WHERE aucbid.[AddressID] IS NOT NULL AND (CASE WHEN aucbid.[Created] IS NOT NULL THEN CASE WHEN aucbid.[Created]<=auc.[AuctionBegins] THEN aucbid.[Created] ELSE auc.[AuctionBegins] END ELSE auc.[AuctionBegins] END) IS NOT NULL
            UNION 
            SELECT 
                [AddressID],
                [RegistrationDate]
            FROM [Auct_AuctionBidder_Ex] -- (Update) might need replace [Auct_AuctionBidder_Ex]
            WHERE [AddressID] IS NOT NULL AND [RegistrationDate] IS NOT NULL
            UNION 
            SELECT 
                [AddressID],
                [Created]
            FROM [Auct_Bidder_Ex] -- (Update) might need replace [Auct_Bidder_Ex]
            WHERE [AddressID] IS NOT NULL AND [Created] IS NOT NULL
            ) AS temp1
        ) AS temp2
    WHERE [RowNumber]=1
)
, first_spotted_ShippingAddress AS (
    SELECT 
        [ShippingAddressID],
        [Created]
    FROM (
        SELECT 
            [ShippingAddressID],
            [Created],
            ROW_NUMBER() OVER(
                PARTITION BY [ShippingAddressID]
                ORDER BY [Created]
            ) AS [RowNumber]
        FROM (
            SELECT 
                aucbid.[ShippingAddressID],
                CASE WHEN aucbid.[Created] IS NOT NULL 
                    THEN 
                        CASE WHEN aucbid.[Created]<=auc.[AuctionBegins] 
                            THEN aucbid.[Created]
                        ELSE auc.[AuctionBegins] 
                    END
                ELSE auc.[AuctionBegins] 
                END AS [Created]
            FROM [Auct_AuctionBidder_Ex] aucbid -- (Update) might need replace [Auct_AuctionBidder_Ex]
            LEFT JOIN [Auct_Auction_Ex] auc -- (Update) might need replace [Auct_Auction_Ex]
                ON aucbid.[AuctionID]=auc.[AuctionID]
            WHERE aucbid.[ShippingAddressID] IS NOT NULL AND (CASE WHEN aucbid.[Created] IS NOT NULL THEN CASE WHEN aucbid.[Created]<=auc.[AuctionBegins] THEN aucbid.[Created] ELSE auc.[AuctionBegins] END ELSE auc.[AuctionBegins] END) IS NOT NULL
            UNION 
            SELECT 
                [ShippingAddressID],
                [RegistrationDate]
            FROM [Auct_AuctionBidder_Ex] -- (Update) might need replace [Auct_AuctionBidder_Ex]
            WHERE [ShippingAddressID] IS NOT NULL AND [RegistrationDate] IS NOT NULL
            UNION 
            SELECT 
                [ShippingAddressID],
                [Created]
            FROM [Auct_Bidder_Ex] -- (Update) might need replace [Auct_Bidder_Ex]
            WHERE [ShippingAddressID] IS NOT NULL AND [Created] IS NOT NULL
            ) AS temp1
        ) AS temp2
    WHERE [RowNumber]=1
)
-- SELECT COUNT(*) FROM first_spotted_Address; -- 80811
-- SELECT COUNT(*) FROM first_spotted_ShippingAddress; -- 67838
, first_spotted_Address_merged AS (
    SELECT 
        [AddressID],
        [Created]
    FROM (
        SELECT 
            [AddressID],
            [Created],
            ROW_NUMBER() OVER(
                PARTITION BY [AddressID]
                ORDER BY [Created]
            ) AS [RowNumber]
        FROM (
            SELECT 
                [AddressID],
                [Created]
            FROM first_spotted_Address
            UNION
            SELECT 
                [ShippingAddressID],
                [Created]
            FROM first_spotted_ShippingAddress
            ) AS temp1
        ) AS temp2
    WHERE [RowNumber]=1
)
-- SELECT COUNT(*) FROM first_spotted_Address_merged; -- 82682
, Address_merged1 AS (
    SELECT 
        [CustomerAccountID],
        [CurrentCompanyID],
        [AddressID],
        [Address],
        [City],
        [State],
        [PostalCode],
        [Country],
        [AddressType],
        [AddressStatus],
        [IsDefaultAddress],
        [IsActiveAddress],
        [EffectiveStartDate],
        ISNULL([EffectiveEndDate], @MaxValidDate) AS [EffectiveEndDate]
    FROM (
        SELECT     
            [CustomerAccountID],
            [CurrentCompanyID],
            [AddressID],
            [Address],
            [City],
            [State],
            [PostalCode],
            [Country],
            [AddressType],
            [AddressStatus],
            [IsDefaultAddress],
            [IsActiveAddress],
            [CreatedAddress] AS [EffectiveStartDate],
            CASE WHEN [CustomerAccountID] IS NOT NULL
                THEN LEAD([CreatedAddress]) OVER(
                        PARTITION BY [CustomerAccountID], [AddressID], [AddressType]
                        ORDER BY [CustomerAccountID], [AddressID], [AddressType], [CreatedAddress]
                    ) 
            ELSE LEAD([CreatedAddress]) OVER(
                        PARTITION BY [AddressID], [AddressType]
                        ORDER BY [AddressID], [AddressType], [CreatedAddress]
                    ) 
            END AS [EffectiveEndDate]
        FROM ( 
            SELECT
                [CustomerAccountID],
                [CurrentCompanyID],
                [AddressID],
                [Address],
                [City],
                [State],
                [PostalCode],
                [Country],
                [AddressType],
                [AddressStatus],
                [IsDefaultAddress],
                [IsActiveAddress],
                [CreatedAddress],
                ROW_NUMBER() OVER(
                    PARTITION BY [CustomerAccountID], [CurrentCompanyID], [AddressID], [Address], [City], [State], [PostalCode], [Country], [AddressType], [AddressStatus], [IsDefaultAddress], [IsActiveAddress], [CreatedAddress]
                    ORDER BY [CustomerAccountID], [CurrentCompanyID], [AddressID], [Address], [City], [State], [PostalCode], [Country], [AddressType], [AddressStatus], [IsDefaultAddress], [IsActiveAddress], [CreatedAddress]
                ) AS [RowNumber]
            FROM (
                SELECT 
                    addrasgmt.[CustomerAccountID],
                    addrasgmt.[CompanyID] AS [CurrentCompanyID],
                    ISNULL(addr.[AddressID], addrasgmt.[AddressID]) AS [AddressID],
                    NULLIF(CONCAT(addr.[Address1], ' ', addr.[Address2]), '') AS [Address],
                    addr.[City],
                    addr.[State], -- (Update) addr.[State], OR  addr.[StateProvince] AS [State],
                    addr.[PostalCode],
                    country.[Name] AS [Country], -- (Update) country.[Country],
                    addrty.[Name] AS [AddressType], -- (Update) addrty.[AddressType],
                    CASE WHEN addrasgmt.[AddDescr] IN ('BAD ADDRESS') AND addrsts.[Name] IN ('VERIFIED') -- (Update) CASE WHEN addrasgmt.[AddDescription] IN ('BAD ADDRESS') AND addrsts.[AddressStatus] IN ('VERIFIED')
                        THEN 'BAD'
                    ELSE addrsts.[Name] -- (Update) ELSE addrsts.[AddressStatus]
                    END AS [AddressStatus],
                    addrasgmt.[IsDefault] AS [IsDefaultAddress],
                    addr.[IsActive] AS [IsActiveAddress], -- (Update) addr.[Active] AS [IsActiveAddress], OR addr.[IsActive] AS [IsActiveAddress], 
                    ISNULL(addr.[Created], (SELECT TOP 1 addr2.[Created] FROM [Auct_Address_Ex] addr2 WHERE addr2.[AddressID]<addr.[AddressID] AND addr2.[Created] IS NOT NULL ORDER BY addr2.[AddressID] DESC)) AS [CreatedAddress1],
                    firstspotted.[Created] AS [CreatedAddress2],
                    -- (Comment) SELECT [AddressID], COUNT(*) FROM Address_merged GROUP BY [AddressID] ORDER BY COUNT(*) DESC; seems like all record for [AddressID] only happen once
                    CASE 
                        WHEN firstspotted.[Created] IS NOT NULL
                            THEN CASE 
                                WHEN ISNULL(addr.[Created], (SELECT TOP 1 addr2.[Created] FROM [Auct_Address_Ex] addr2 WHERE addr2.[AddressID]<addr.[AddressID] AND addr2.[Created] IS NOT NULL ORDER BY addr2.[AddressID] DESC))<=firstspotted.[Created]
                                    THEN ISNULL(addr.[Created], (SELECT TOP 1 addr2.[Created] FROM [Auct_Address_Ex] addr2 WHERE addr2.[AddressID]<addr.[AddressID] AND addr2.[Created] IS NOT NULL ORDER BY addr2.[AddressID] DESC))
                                ELSE firstspotted.[Created]
                                END
                        ELSE ISNULL(addr.[Created], (SELECT TOP 1 addr2.[Created] FROM [Auct_Address_Ex] addr2 WHERE addr2.[AddressID]<addr.[AddressID] AND addr2.[Created] IS NOT NULL ORDER BY addr2.[AddressID] DESC))
                    END AS [CreatedAddress]
                FROM [Auct_Address_FinalView] addr -- need replace [Auct_Address_Ex] with [Auct_Address_Cleaning_stg]
                FULL OUTER JOIN [Auct_AddressAssignments_Ex] addrasgmt -- need replace [Auct_AddressAssignments_Ex] with [Auct_AddressAssignments]
                    ON addr.[AddressID]=addrasgmt.[AddressID]
                LEFT JOIN [Auct_Country_Ex] country -- need replace [Auct_Country_Ex] with [Auct_Country]
                    ON addr.[CountryID]=country.[CountryID] -- (Update) ON addr.[CountryID]=country.[CountryID]
                LEFT JOIN [Auct_AddressTypes_Ex] addrty -- need replace [Auct_AddressTypes_Ex] with [Auct_AddressTypes]
                    ON addrasgmt.[AddressTypeID]=addrty.[AddressTypeID]
                LEFT JOIN [Auct_AddressStatus_Ex] addrsts -- need replace [Auct_AddressStatus_Ex] with [Auct_AddressStatus] 
                    ON addrasgmt.[AddressStatusID]=addrsts.[AddressStatusID]
                LEFT JOIN first_spotted_Address_merged firstspotted 
                    ON addr.[AddressID]=firstspotted.[AddressID]
                WHERE COALESCE(NULLIF(CONCAT(addr.[Address1], ' ', addr.[Address2]), ''), addr.[City], addr.[State], addr.[PostalCode], country.[Name]) IS NOT NULL -- (Update) WHERE COALESCE(NULLIF(CONCAT(addr.[Address1], ' ', addr.[Address2]), ''), addr.[City], addr.[StateProvince], addr.[PostalCode], country.[Name]) IS NOT NULL
                -- (Comment) SELECT COUNT(*) FROM Address_merged; -- 243041 
                -- (Comment) SELECT COUNT(DISTINCT [AddressID]) FROM Address_merged; -- 243041
                ) AS temp1
            ) AS temp2
        WHERE [RowNumber]=1
        ) AS temp3
)
, Address_merged AS (
    SELECT 
        [CustomerAccountID],
        [CurrentCompanyID],
        [AddressID],
        -- [AddressType],
        -- [Address],
        [home_Address], 
        [business_Address], 
        [local_Address], 
        [dealer_Address], 
        [mailing_Address],
        [City],
        [State],
        [PostalCode],
        [Country],
        [AddressStatus],
        [IsDefaultAddress],
        [IsActiveAddress],
        [EffectiveStartDate],
        [EffectiveEndDate],
        CASE WHEN [NewRowNumber]='1' 
            THEN '1'
        ELSE '0'
        END AS [IsCurrent] 
    FROM (
        SELECT 
            [CustomerAccountID],
            [CurrentCompanyID],
            [AddressID],
            -- [AddressType],
            -- [Address],
            [home_Address], 
            [business_Address], 
            [local_Address], 
            [dealer_Address], 
            [mailing_Address],
            [City],
            [State],
            [PostalCode],
            [Country],
            [AddressStatus],
            [IsDefaultAddress],
            [IsActiveAddress],
            [EffectiveStartDate],
            [EffectiveEndDate],
            CASE WHEN [CustomerAccountID] IS NOT NULL
                THEN ROW_NUMBER() OVER(
                    PARTITION BY [CustomerAccountID]
                    ORDER BY [EffectiveStartDate] DESC, ISNULL([EffectiveEndDate], @MaxValidDate) DESC
                    ) 
            ELSE ROW_NUMBER() OVER(
                    PARTITION BY [AddressID]
                    ORDER BY [EffectiveStartDate] DESC, ISNULL([EffectiveEndDate], @MaxValidDate) DESC
                    ) 
            END AS [NewRowNumber]
        FROM (
            SELECT 
                [CustomerAccountID],
                [CurrentCompanyID],
                [AddressID],
                -- [AddressType],
                -- [Address],
                Col,
                Val,
                [City],
                [State],
                [PostalCode],
                [Country],
                [AddressStatus],
                [IsDefaultAddress],
                [IsActiveAddress],
                [EffectiveStartDate],
                [EffectiveEndDate]
            FROM (
                SELECT 
                    [CustomerAccountID],
                    [CurrentCompanyID],
                    [AddressID],
                    -- [AddressType],
                    -- [Address],
                    LOWER([AddressType])+'_Address' AS Col,
                    [Address] AS Val,
                    [City],
                    [State],
                    [PostalCode],
                    [Country],
                    [AddressStatus],
                    [IsDefaultAddress],
                    [IsActiveAddress],
                    [EffectiveStartDate],
                    [EffectiveEndDate]
                FROM Address_merged1
                ) AS SRC1
            ) AS SRC2
            PIVOT (MAX(Val) FOR Col IN ([home_Address], [business_Address], [local_Address], [dealer_Address], [mailing_Address])) AS PVT
        ) AS temp1
)

SELECT 
    [CustomerAccountID],
    [CurrentCompanyID],
    [AddressID],
    -- [AddressType],
    -- [Address],
    [home_Address], 
    [business_Address], 
    [local_Address], 
    [dealer_Address], 
    [mailing_Address],
    [City],
    [State],
    [PostalCode],
    [Country],
    [AddressStatus],
    [IsDefaultAddress],
    [IsActiveAddress],
    [EffectiveStartDate],
    [EffectiveEndDate],
    [IsCurrent]
FROM Address_merged