{{ config(materialized='view',schema='stg')}}
Select
	cast([Oid] as nvarchar(4000)) [OID],
	cast([GuidId] as nvarchar(4000)) [GUIDID],
	cast([DisplayName] as nvarchar(4000)) [DisplayName],
	[IntId] [IntID]
From stg.[CC_AuditeDOBJectweakReference_Raw]
