create view "stg"."CC_SecURItySystemTypePermissionsoBJect_FinalView__dbt_tmp" as
    
Select
	[OID],[OptimisticLockField],[GcRecord],[OBJectType],[TargetType],[Owner],[AllowRead],[Allowwrite],[AllowCreate],[AllowDelete],[AllowNavigate] 
From stg.[CC_SecURItySystemTypePermissionsoBJect_Incr] 
Where [dbt_valid_to] is null