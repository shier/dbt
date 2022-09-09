{{ config(materialized='view',schema='stg')}}
Select
	[DOCKETID] [DocketID],
	[CONSIGNMENTID] [ConsignmentID],
	cast([LOTSTATUS] as nvarchar(4000)) [LotStatus],
	[TARGETTIME] [TargetTime],
	[ACTUALTIME] [ActualTime],
	[CREATED] [Created],
	[UPDATEEVENTID] [UpdateEventID],
	[LANENUMBER] [LaneNumber]
From stg.[Auct_Docket_Raw]
