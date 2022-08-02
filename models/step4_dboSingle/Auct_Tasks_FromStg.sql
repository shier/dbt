{{ config(materialized='table',schema='dbo')}}
Select
	cast([TaskID] as int) [TaskID],
	cast([Active] as bit) [Active],
	cast([TaskCategoryID] as int) [TaskCategoryID],
	cast([TaskCategoryLinkID] as int) [TaskCategoryLinkID],
	cast([TaskCategoryLinkGUID] as nvarchar(4000)) [TaskCategoryLinkGUID] 
From stg.[Auct_Tasks_FinalView]