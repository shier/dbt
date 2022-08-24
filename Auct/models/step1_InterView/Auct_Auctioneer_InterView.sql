{{ config(materialized='view',schema='stg')}}
Select
	[AUCTIONEERID] [AuctioneerID],
	[ACTIVE] [Active],
	[CONTACTID] [ContactID],
	[CREATED] [Created],
	[UPDATEEVENTID] [UpdateEventID]
From stg.[Auct_Auctioneer_Raw]
