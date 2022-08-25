{{ config(materialized='table',schema='stg')}}


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
            FROM [Auct_Consignment_FinalView] consgt -- (Update) might need replace [Auct_Consignment_Ex]
            LEFT JOIN [Auct_Auction_FinalView] auc -- (Update) might need replace [Auct_Auction_Ex]
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
            FROM [Auct_AuctionBidder_FinalView] aucbid -- (Update) might need replace [Auct_AuctionBidder_Ex]
            LEFT JOIN [Auct_Auction_FinalView] auc -- (Update) might need replace [Auct_Auction_Ex]
                ON aucbid.[AuctionID]=auc.[AuctionID]
            WHERE aucbid.[AddressID] IS NOT NULL AND (CASE WHEN aucbid.[Created] IS NOT NULL THEN CASE WHEN aucbid.[Created]<=auc.[AuctionBegins] THEN aucbid.[Created] ELSE auc.[AuctionBegins] END ELSE auc.[AuctionBegins] END) IS NOT NULL
            UNION 
            SELECT 
                [AddressID],
                [RegistrationDate]
            FROM [Auct_AuctionBidder_FinalView] -- (Update) might need replace [Auct_AuctionBidder_Ex]
            WHERE [AddressID] IS NOT NULL AND [RegistrationDate] IS NOT NULL
            UNION 
            SELECT 
                [AddressID],
                [Created]
            FROM [Auct_Bidder_FinalView] -- (Update) might need replace [Auct_Bidder_Ex]
            WHERE [AddressID] IS NOT NULL AND [Created] IS NOT NULL
            ) AS temp1
        ) AS temp2
    WHERE [RowNumber]=1
