{{ config(materialized='view',schema='stg')}}
Select
	[ContactID],[AuctionID],[Count] 
From stg.[Auct_ContactConreqAuction_Incr] 
Where [dbt_valid_to] is null