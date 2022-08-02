{{ config(materialized='table',schema='dbo')}}
Select
	cast([TaskItemTypeID] as int) [TaskItemTypeID],
	cast([Name] as nvarchar(4000)) [Name],
	cast([TaskCategoryID] as int) [TaskCategoryID],
	cast([CreateProcessor] as nvarchar(4000)) [CreateProcessor],
	cast([GetProcessor] as nvarchar(4000)) [GetProcessor],
	cast([Actionhtml] as nvarchar(4000)) [Actionhtml],
	cast([IsTOpTask] as bit) [IsTopTask],
	cast([DisplayOrder] as numeric(18,0)) [DisplayOrder] 
From stg.[Auct_TaskItemTypes_FinalView]