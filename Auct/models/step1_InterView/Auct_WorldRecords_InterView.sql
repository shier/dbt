{{ config(materialized='view',schema='stg')}}
Select
	[WRSP] [Wrsp],
	[LOTNUMBER] [LotNumber],
	[WRSH] [Wrsh],
	[WRSSCM] [Wrsscm],
	[AUCTIONID] [AuctionID],
	cast([COMMENTS] as nvarchar(4000)) [Comments],
	[CREATED] [Created]
From stg.[Auct_WorldRecords_Raw]
