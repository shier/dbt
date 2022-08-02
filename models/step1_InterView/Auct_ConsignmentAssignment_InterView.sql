{{ config(materialized='view',schema='stg')}}
Select
	cast([AssignID] as nvarchar(4000)) [AssignID],
	[UserID] [UserID],
	cast([Text] as nvarchar(4000)) [Text],
	[PriorityID] [PriorityID],
	[DateCreated] [DateCreated]
From stg.[Auct_ConsignmentAssignment_Raw]
