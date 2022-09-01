create view "stg"."Auct_PhotoStatus_InterView__dbt_tmp" as
    
Select
	[PHOTOSTATUSID] [PhotoStatusID],
	cast([NAME] as nvarchar(4000)) [Name],
	[CREATED] [Created],
	[UPDATEEVENTID] [UpdateEventID]
From stg.[Auct_PhotoStatus_Raw]
