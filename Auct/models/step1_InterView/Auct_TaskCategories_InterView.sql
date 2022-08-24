{{ config(materialized='view',schema='stg')}}
Select
	[TASKCATEGORYID] [TaskCategoryID],
	[ACTIVE] [Active],
	cast([NAME] as nvarchar(4000)) [Name]
From stg.[Auct_TaskCategories_Raw]
