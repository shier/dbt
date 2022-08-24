create view "stg"."Auct_BadgeType_InterView__dbt_tmp" as
    
Select
	[BADGETYPEID] [BadgeTypeID],
	cast([NAME] as nvarchar(4000)) [Name],
	[CREATED] [Created],
	[UPDATEEVENTID] [UpdateEventID]
From stg.[Auct_BadgeType_Raw]
