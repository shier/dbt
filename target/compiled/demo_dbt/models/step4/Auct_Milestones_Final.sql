
Select
	[MilestoneID],[MilestoneComments],[ConsignmentID],[UpdateEventID],[MilestoneTime],[Created] 
From stg.[Auct_Milestones_Incr] 
Where [dbt_valid_to] is null