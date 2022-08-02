create view "stg"."Auct_ConsignmentAssignment_FinalView__dbt_tmp" as
    
Select
	[AssignID],[UserID],[Text],[PriorityID],[DateCreated] 
From stg.[Auct_ConsignmentAssignment_Incr] 
Where [dbt_valid_to] is null
