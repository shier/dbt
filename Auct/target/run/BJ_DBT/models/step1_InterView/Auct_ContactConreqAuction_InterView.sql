create view "stg"."Auct_ContactConreqAuction_InterView__dbt_tmp" as
    
Select
	[CONTACTID] [ContactID],
	[AUCTIONID] [AuctionID],
	[COUNT] [Count]
From stg.[Auct_ContactConreqAuction_Raw]
