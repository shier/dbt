create view "stg"."Auct_ContactConreqAuction_FinalView__dbt_tmp" as
    
Select
	[ContactID],[AuctionID],[Count] 
From stg.[Auct_ContactConreqAuction_Incr] 
Where [dbt_valid_to] is null