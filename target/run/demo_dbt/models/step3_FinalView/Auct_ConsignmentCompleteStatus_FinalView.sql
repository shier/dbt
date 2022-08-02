create view "stg"."Auct_ConsignmentCompleteStatus_FinalView__dbt_tmp" as
    
Select
	[ConsignmentCompleteStatusID],[Name],[DisplayOrder],[Active] 
From stg.[Auct_ConsignmentCompleteStatus_Incr] 
Where [dbt_valid_to] is null
