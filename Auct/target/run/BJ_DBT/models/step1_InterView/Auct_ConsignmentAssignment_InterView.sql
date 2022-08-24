create view "dbo_stg"."Auct_ConsignmentAssignment_InterView__dbt_tmp" as
    
Select
	cast([AssignID] as nvarchar(4000)) [AssignID],
	[UserID] [UserID],
	cast([Text] as nvarchar(4000)) [Text],
	[PriorityID] [PriorityID],
	[DateCreated] [DateCreated]
From stg.[Auct_ConsignmentAssignment_Raw]
