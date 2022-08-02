create view "stg"."CC_ModuleInfo_FinalView__dbt_tmp" as
    
Select
	[ID],[OptimisticLockField],[Version],[Name],[AssemblyFileName],[IsMain] 
From stg.[CC_ModuleInfo_Incr] 
Where [dbt_valid_to] is null
