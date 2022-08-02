{{ config(materialized='table',schema='dbo')}}
Select
	cast([MaptoID] as int) [MaptoID],
	cast([Name] as nvarchar(4000)) [Name] 
From stg.[Auct_Mapper_Country_FinalView]