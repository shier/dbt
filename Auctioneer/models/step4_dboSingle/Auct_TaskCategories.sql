{{ config(materialized='table',schema='dbo')}}
Select
	cast([Active] as bit) [ACTIVE],
	cast([TaskCategoryID] as int) [TASKCATEGORYID],
	cast([Name] as nvarchar(4000)) [NAME] 
From stg.[Auct_TaskCategories_FinalView]