{{ config(materialized='table',schema='dbo')}}
Select
	cast([ContactID] as int) [ContactID],
	cast([AuctionID] as int) [AuctionID],
	cast([Count] as int) [Count] 
From stg.[Auct_ContactConreqAuction_FinalView]