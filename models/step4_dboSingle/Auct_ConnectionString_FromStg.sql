{{ config(materialized='table',schema='dbo')}}
Select
	cast([TypeName] as nvarchar(4000)) [TypeName],
	cast([ConnectionString] as nvarchar(4000)) [ConnectionString],
	cast([Environment] as nvarchar(4000)) [Environment] 
From stg.[Auct_ConnectionString_FinalView]