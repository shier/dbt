{{ config(materialized='table',schema='dbo')}}
Select
	cast([MultiMediaCategoryID] as int) [MultiMediaCategoryID],
	cast([Name] as nvarchar(4000)) [Name],
	cast([Active] as int) [Active] 
From stg.[Auct_MultiMediaCategory_FinalView]