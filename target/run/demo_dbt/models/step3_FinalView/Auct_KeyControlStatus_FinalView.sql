create view "stg"."Auct_KeyControlStatus_FinalView__dbt_tmp" as
    
Select
	[KeyControlStatusID],[Active],[Name] 
From stg.[Auct_KeyControlStatus_Incr] 
Where [dbt_valid_to] is null
