create view "stg"."CC_SecURItySystemUserusers_SecuritysystemRoleroles_FinalView__dbt_tmp" as
    
Select
	[Roles],[OptimisticLockField],[Users],[OID] 
From stg.[CC_SecURItySystemUserusers_SecuritysystemRoleroles_Incr] 
Where [dbt_valid_to] is null
