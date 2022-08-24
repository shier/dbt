{{ config(materialized='view',schema='stg')}}
Select
	[TASKITEMTYPEID] [TaskItemTypeID],
	cast([NAME] as nvarchar(4000)) [Name],
	[TASKCATEGORYID] [TaskCategoryID],
	cast([CREATEPROCESSOR] as nvarchar(4000)) [CreateProcessor],
	cast([GETPROCESSOR] as nvarchar(4000)) [GetProcessor],
	cast([ACTIONHTML] as nvarchar(4000)) [Actionhtml],
	[ISTOPTASK] [IsTOpTask],
	[DISPLAYORDER] [DisplayOrder]
From stg.[Auct_TaskItemTypes_Raw]
