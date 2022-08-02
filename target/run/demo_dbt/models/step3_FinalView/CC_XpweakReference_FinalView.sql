create view "stg"."CC_XpweakReference_FinalView__dbt_tmp" as
    
Select
	[OID],[TargetKey],[TargetType],[OptimisticLockField],[GcRecord],[OBJectType] 
From stg.[CC_XpweakReference_Incr] 
Where [dbt_valid_to] is null
