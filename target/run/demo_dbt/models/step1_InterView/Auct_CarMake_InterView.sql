create view "stg"."Auct_CarMake_InterView__dbt_tmp" as
    
Select
	[CARMAKEID] [CarMakeID],
	[ACTIVE] [Active],
	[WEBACTIVE] [WebActive],
	cast([NAME] as nvarchar(4000)) [Name],
	[CREATED] [Created],
	[UPDATEEVENTID] [UpdateEventID]
From stg.[Auct_CarMake_Raw]
