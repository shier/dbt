{{ config(materialized='view',schema='stg')}}
Select
	[CONTACTSUFFIXID] [ContactSuffixID],
	cast([NAME] as nvarchar(4000)) [Name],
	[CREATED] [Created],
	[UPDATEEVENTID] [UpdateEventID]
From stg.[Auct_ContactSuffix_Raw]
