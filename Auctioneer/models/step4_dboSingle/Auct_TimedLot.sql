{{ config(materialized='table',schema='dbo')}}
Select
	cast([ConsignmentID] as int) [CONSIGNMENTID],
	cast([TargetTime] as datetime) [TARGETTIME] 
From stg.[Auct_TimedLot_FinalView]