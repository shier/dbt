{{ config(materialized='table',schema='dbo')}}
Select
	cast([MaptoID] as int) [MAPTOID],
	cast([Name] as nvarchar(4000)) [NAME] 
From stg.[Auct_Mapper_Country_FinalView]