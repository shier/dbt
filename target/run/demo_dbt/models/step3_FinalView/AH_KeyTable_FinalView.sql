create view "stg"."AH_KeyTable_FinalView__dbt_tmp" as
    
Select
	[NextID] 
From stg.[AH_KeyTable_Incr] 
Where [dbt_valid_to] is null
