{{ config(materialized='view',schema='stg')}}
Select
	[CONTACTTYPEID] [ContactTypeID],
	cast([NAME] as nvarchar(4000)) [Name],
	[CREATED] [Created],
	[UPDATEEVENTID] [UpdateEventID],
	cast([ACTIVE] as nvarchar(4000)) [Active]
From stg.[Auct_ContactType_Raw]
