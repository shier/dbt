{{ config(materialized='view',schema='stg')}}
Select
	[ID] [ID],
	cast([PROCESSDATE] as nvarchar(4000)) [ProcessDate],
	[RECSPROCESSED] [RecsProcessed],
	[STATUS] [Status],
	[AUCTIONID] [AuctionID],
	[CREATED] [Created]
From stg.[Auct_NavPulLog_Raw]
