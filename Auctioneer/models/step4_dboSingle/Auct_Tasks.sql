{{ config(materialized='table',schema='dbo')}}
Select
	cast([Active] as bit) [ACTIVE],
	cast([TaskID] as int) [TASKID],
	cast([TaskCategoryID] as int) [TASKCATEGORYID],
	cast([TaskCategoryLinkID] as int) [TASKCATEGORYLINKID],
	cast([TaskCategoryLinkGUID] as nvarchar(4000)) [TASKCATEGORYLINKGUID] 
From stg.[Auct_Tasks_FinalView]