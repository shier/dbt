{{ config(materialized='table',schema='dbo')}}
Select
	cast([MilestoneID] as int) [MilestoneID],
	cast([ConsignmentID] as int) [ConsignmentID],
	cast([MilestoneTime] as datetime) [MilestoneTime],
	cast([Created] as datetime) [Created],
	cast([UpdateEventID] as int) [UpdateEventID],
	cast([MilestoneComments] as nvarchar(4000)) [MilestoneComments] 
From stg.[Auct_Milestones_FinalView]