create view "stg"."CC_SecURItySystemMemberPermissionsoBJect_FinalView__dbt_tmp" as
    
Select
	[OID],[OptimisticLockField],[GcRecord],[Members],[Criteria],[Owner],[AllowRead],[Allowwrite] 
From stg.[CC_SecURItySystemMemberPermissionsoBJect_Incr] 
Where [dbt_valid_to] is null
