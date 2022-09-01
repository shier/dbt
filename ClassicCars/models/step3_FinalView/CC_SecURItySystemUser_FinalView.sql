{{ config(materialized='view',schema='stg')}}
Select
	[UserName],[ChangePasswordonFirstLogon],[IsActive],[OID],[StoredPassword],[OptimisticLockField],[GcRecord],[OBJectType] 
From stg.[CC_SecURItySystemUser_Incr] 
Where [dbt_valid_to] is null