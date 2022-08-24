{{ config(materialized='view',schema='stg')}}
Select
	[TASKID] [TaskID],
	[ACTIVE] [Active],
	[TASKCATEGORYID] [TaskCategoryID],
	[TASKCATEGORYLINKID] [TaskCategoryLinkID],
	cast([TASKCATEGORYLINKGUID] as nvarchar(4000)) [TaskCategoryLinkGUID]
From stg.[Auct_Tasks_Raw]
