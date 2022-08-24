{{ config(materialized='view',schema='stg')}}
Select
	[BLOCKBIDID] [BlockBidID],
	[ASKINGBID] [AskingBID],
	[HIGHBID] [HighBID],
	[DOCKETID] [DocketID],
	[CREATED] [Created],
	[UPDATEEVENTID] [UpdateEventID],
	[STARTTIME] [StartTime],
	[ENDTIME] [EndTime]
From stg.[Auct_BlockBID_Raw]
