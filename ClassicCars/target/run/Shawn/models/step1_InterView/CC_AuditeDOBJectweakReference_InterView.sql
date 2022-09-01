create view "stg"."CC_AuditeDOBJectweakReference_InterView__dbt_tmp" as
    
Select
	cast([Oid] as nvarchar(4000)) [OID],
	cast([GuidId] as nvarchar(4000)) [GUIDID],
	cast([DisplayName] as nvarchar(4000)) [DisplayName],
	[IntId] [IntID]
From stg.[CC_AuditeDOBJectweakReference_Raw]
