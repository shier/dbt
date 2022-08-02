create view "stg"."CC_SecURItySystemUser_FinalView__dbt_tmp" as
    
Select
	[UserName],[ChangePasswordonFirstLogon],[IsActive],[OID],[StoredPassword],[OptimisticLockField],[GcRecord],[OBJectType] 
From stg.[CC_SecURItySystemUser_Incr] 
Where [dbt_valid_to] is null
