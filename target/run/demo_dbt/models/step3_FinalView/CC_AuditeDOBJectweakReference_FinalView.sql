create view "stg"."CC_AuditeDOBJectweakReference_FinalView__dbt_tmp" as
    
Select
	[OID],[GUIDID],[DisplayName],[IntID] 
From [CC_AuditeDOBJectweakReference_Incr]
