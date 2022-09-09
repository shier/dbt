{{ config(materialized='view',schema='stg')}}
Select
	[OID] [OID],
	cast([TypeName] as nvarchar(4000)) [TypeName],
	cast([AssemblyName] as nvarchar(4000)) [AssemblyName]
From stg.[CC_XpoBJectType_Raw]
