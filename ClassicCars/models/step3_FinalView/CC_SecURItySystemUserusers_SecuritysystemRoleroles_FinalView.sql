{{ config(materialized='view',schema='stg')}}
Select
	[Roles],[OptimisticLockField],[Users],[OID] 
From stg.[CC_SecURItySystemUserusers_SecuritysystemRoleroles_Incr] 
Where [dbt_valid_to] is null