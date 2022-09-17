{{ config(materialized='table',schema='dbo')}}
Select
	cast([MilestoneID] as int) [MILESTONEID],
	cast([ConsignmentID] as int) [CONSIGNMENTID],
	cast([MilestoneTime] as datetime) [MILESTONETIME],
	cast([Created] as datetime) [CREATED],
	cast([UpdateEventID] as int) [UPDATEEVENTID],
	cast([MilestoneComments] as nvarchar(4000)) [MILESTONECOMMENTS] 
From stg.[Auct_Milestones_FinalView]