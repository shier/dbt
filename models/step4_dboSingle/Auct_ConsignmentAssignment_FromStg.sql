{{ config(materialized='table',schema='dbo')}}
Select
	cast([AssignID] as nvarchar(4000)) [AssignID],
	cast([UserID] as int) [UserID],
	cast([Text] as nvarchar(4000)) [Text],
	cast([PriorityID] as int) [PriorityID],
	cast([DateCreated] as DATETIME) [DateCreated] 
From stg.[Auct_ConsignmentAssignment_FinalView]