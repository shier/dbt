{{ config(materialized='view',schema='stg')}}
Select
	[CONSIGNMENTID] [ConsignmentID],
	[TARGETTIME] [TargetTime]
From stg.[Auct_TimedLot_Raw]
