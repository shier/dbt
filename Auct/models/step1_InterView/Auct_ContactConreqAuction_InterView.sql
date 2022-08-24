{{ config(materialized='view',schema='stg')}}
Select
	[CONTACTID] [ContactID],
	[AUCTIONID] [AuctionID],
	[COUNT] [Count]
From stg.[Auct_ContactConreqAuction_Raw]
