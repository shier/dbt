create view "stg"."AH_CategoryCount_FinalView__dbt_tmp" as
    
Select
	[ID],[Count],[CategoryID] 
From stg.[AH_CategoryCount_Incr] 
Where [dbt_valid_to] is null
