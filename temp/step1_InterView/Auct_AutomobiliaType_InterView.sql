{{ config(materialized='view',schema='stg')}}
Select
	[AUTOMOBILIATYPEID] [AutomobiliaTypeID],
	cast([NAME] as nvarchar(4000)) [Name],
	[CREATED] [Created],
	[UPDATEEVENTID] [UpdateEventID]
From stg.[Auct_AutomobiliaType_Raw]
