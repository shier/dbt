create view "stg"."Auct_ConsignmentStatus_FinalView__dbt_tmp" as
    
Select
	[ConsignmentStatusID],[Name],[Created],[UpdateEventID] 
From stg.[Auct_ConsignmentStatus_Incr] 
Where [dbt_valid_to] is null
