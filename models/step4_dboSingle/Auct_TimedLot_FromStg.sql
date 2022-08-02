{{ config(materialized='table',schema='dbo')}}
Select
	cast([ConsignmentID] as int) [ConsignmentID],
	cast([TargetTime] as datetime) [TargetTime] 
From stg.[Auct_TimedLot_FinalView]