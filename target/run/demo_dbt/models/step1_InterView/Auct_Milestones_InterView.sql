create view "stg"."Auct_Milestones_InterView__dbt_tmp" as
    
Select
	[MILESTONEID] [MilestoneID],
	[CONSIGNMENTID] [ConsignmentID],
	[MILESTONETIME] [MilestoneTime],
	[CREATED] [Created],
	[UPDATEEVENTID] [UpdateEventID],
	cast([MILESTONECOMMENTS] as nvarchar(4000)) [MilestoneComments]
From stg.[Auct_Milestones_Raw]
