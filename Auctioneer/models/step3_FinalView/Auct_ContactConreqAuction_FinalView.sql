{{ config(materialized='view',schema='stg')}}
Select
	[ContactID],[AuctionID],[Count] 
From [Auct_ContactConreqAuction_Incr]