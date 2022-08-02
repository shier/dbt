create view "stg"."Auct_Path_FinalView__dbt_tmp" as
    
Select
	[PathID],[Path],[Active] 
From stg.[Auct_Path_Incr] 
Where [dbt_valid_to] is null
