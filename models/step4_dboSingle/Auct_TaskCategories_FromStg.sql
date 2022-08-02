{{ config(materialized='table',schema='dbo')}}
Select
	cast([TaskCategoryID] as int) [TaskCategoryID],
	cast([Active] as bit) [Active],
	cast([Name] as nvarchar(4000)) [Name] 
From stg.[Auct_TaskCategories_FinalView]