{{ config(materialized='table',schema='dbo')}}
Select
	cast([OID] as nvarchar(4000)) [Oid],
	cast([GUIDID] as nvarchar(4000)) [GuidId],
	cast([DisplayName] as nvarchar(4000)) [DisplayName],
	cast([IntID] as int) [IntId] 
From stg.[CC_AuditeDOBJectweakReference_FinalView]