create view "dbo_stg"."Auct_TaskCategories_InterView__dbt_tmp" as
    
Select
	[TASKCATEGORYID] [TaskCategoryID],
	[ACTIVE] [Active],
	cast([NAME] as nvarchar(4000)) [Name]
From stg.[Auct_TaskCategories_Raw]
