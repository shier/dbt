{{ config(materialized='view',schema='stg')}}
Select
	cast([TYPENAME] as nvarchar(4000)) [TypeName],
	cast([CONNECTIONSTRING] as nvarchar(4000)) [ConnectionString],
	cast([ENVIRONMENT] as nvarchar(4000)) [Environment]
From stg.[Auct_ConnectionString_Raw]
