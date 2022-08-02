create view "stg"."Auct_Milestones_FinalView__dbt_tmp" as
    
Select
	[MilestoneID],[ConsignmentID],[MilestoneTime],[Created],[UpdateEventID],[MilestoneComments] 
From stg.[Auct_Milestones_Incr] 
Where [dbt_valid_to] is null
