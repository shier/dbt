{{ config(materialized='table',schema='dbo')}}
SELECT 
    [AuctioneerID] as [Auctioneer_Skey], 
    [ContactID],  
    [Created], 
    [UpdateEventID], 
    [Active]
FROM [stg].[Auct_Auctioneer_FinalView]