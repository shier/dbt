{{ config(materialized='table',schema='dbo')}}
Select
	cast([Host] as nvarchar(4000)) [Host],
	cast([Domain] as nvarchar(4000)) [Domain],
	cast([UserName] as nvarchar(4000)) [UserName],
	cast([Password] as nvarchar(4000)) [Password] 
From stg.[Auct_EmailConfiguration_FinalView]