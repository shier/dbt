create view "stg"."CC_SecURItySystemoBJectPermissionsobject_FinalView__dbt_tmp" as
    
Select
	[OID],[AllowRead],[Allowwrite],[AllowDelete],[AllowNavigate],[Criteria],[Owner],[OptimisticLockField],[GcRecord] 
From stg.[CC_SecURItySystemoBJectPermissionsobject_Incr] 
Where [dbt_valid_to] is null
