{{ config(materialized='table',schema='stg')}}
  SELECT 
        [ShippingAddressID],
        [Created],
        [RowNumber]
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
            FROM [Auct_AuctionBidder_FinalView] aucbid -- (Update) might need replace [Auct_AuctionBidder_Ex]
            LEFT JOIN [Auct_Auction_FinalView] auc -- (Update) might need replace [Auct_Auction_Ex]
                ON aucbid.[AuctionID]=auc.[AuctionID]
            WHERE aucbid.[ShippingAddressID] IS NOT NULL AND (CASE WHEN aucbid.[Created] IS NOT NULL THEN CASE WHEN aucbid.[Created]<=auc.[AuctionBegins] THEN aucbid.[Created] ELSE auc.[AuctionBegins] END ELSE auc.[AuctionBegins] END) IS NOT NULL
            UNION 
            SELECT 
                [ShippingAddressID],
                [RegistrationDate]
            FROM [Auct_AuctionBidder_FinalView] -- (Update) might need replace [Auct_AuctionBidder_Ex]
            WHERE [ShippingAddressID] IS NOT NULL AND [RegistrationDate] IS NOT NULL
            UNION 
            SELECT 
                [ShippingAddressID],
                [Created]
            FROM [Auct_Bidder_FinalView] -- (Update) might need replace [Auct_Bidder_Ex]
            WHERE [ShippingAddressID] IS NOT NULL AND [Created] IS NOT NULL
            ) AS temp1
        ) AS temp2
    WHERE [RowNumber]=1