{{ config(materialized='table',schema='dbo')}}
Select
	cast([TypeName] as nvarchar(4000)) [TYPENAME],
	cast([ConnectionString] as nvarchar(4000)) [CONNECTIONSTRING],
	cast([Environment] as nvarchar(4000)) [ENVIRONMENT] 
From stg.[Auct_ConnectionString_FinalView]