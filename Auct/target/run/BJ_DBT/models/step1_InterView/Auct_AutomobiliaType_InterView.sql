create view "stg"."Auct_AutomobiliaType_InterView__dbt_tmp" as
    
Select
	[AUTOMOBILIATYPEID] [AutomobiliaTypeID],
	cast([NAME] as nvarchar(4000)) [Name],
	[CREATED] [Created],
	[UPDATEEVENTID] [UpdateEventID]
From stg.[Auct_AutomobiliaType_Raw]
