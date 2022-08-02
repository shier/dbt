{{ config(materialized='view',schema='stg')}}
Select
	[OID],[OptimisticLockField],[GcRecord],[Members],[Criteria],[Owner],[AllowRead],[Allowwrite] 
From stg.[CC_SecURItySystemMemberPermissionsoBJect_Incr] 
Where [dbt_valid_to] is null