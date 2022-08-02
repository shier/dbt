{{ config(materialized='table',schema='dbo')}}
Select
	cast([OID] as nvarchar(4000)) [OID],
	cast([GUIDID] as nvarchar(4000)) [GUIDID],
	cast([DisplayName] as nvarchar(4000)) [DisplayName],
	cast([IntID] as int) [IntID] 
From stg.[CC_AuditeDOBJectweakReference_FinalView]