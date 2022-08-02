{{ config(materialized='view',schema='stg')}}
Select
	[CONTACTSTATUSID] [ContactStatusID],
	cast([NAME] as nvarchar(4000)) [Name],
	[CREATED] [Created],
	[UPDATEEVENTID] [UpdateEventID]
From stg.[Auct_ContactStatus_Raw]
