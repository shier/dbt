{{ config(materialized='table',schema='dbo')}}
Select
	cast([DocketID] as int) [DocketID],
	cast([ConsignmentID] as int) [ConsignmentID],
	cast([LotStatus] as varchar(64)) [LotStatus],
	cast([TargetTime] as datetime) [TargetDateTime],
	cast([ActualTime] as datetime) [ActualDateTime],
	cast([Created] as datetime) [Created],
	cast([UpdateEventID] as int) [UpdateEventID],
	cast([LaneNumber] as int) [LaneNumber] 
From stg.[Auct_Docket_FinalView]