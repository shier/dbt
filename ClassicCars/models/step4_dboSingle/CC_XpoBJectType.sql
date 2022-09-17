{{ config(materialized='table',schema='dbo')}}
Select
	cast([OID] as int) [OID],
	cast([TypeName] as nvarchar(4000)) [TypeName],
	cast([AssemblyName] as nvarchar(4000)) [AssemblyName] 
From stg.[CC_XpoBJectType_FinalView]