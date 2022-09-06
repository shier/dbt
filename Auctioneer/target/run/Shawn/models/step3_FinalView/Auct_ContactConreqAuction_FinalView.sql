create view "stg"."Auct_ContactConreqAuction_FinalView__dbt_tmp" as
    
Select
	[ContactID],[AuctionID],[Count] 
From [Auct_ContactConreqAuction_Incr]
