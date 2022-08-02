{{ config(materialized='view',schema='stg')}}
Select
	[ID],[OptimisticLockField],[Version],[Name],[AssemblyFileName],[IsMain] 
From stg.[CC_ModuleInfo_Incr] 
Where [dbt_valid_to] is null