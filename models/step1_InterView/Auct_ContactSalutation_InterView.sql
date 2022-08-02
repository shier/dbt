{{ config(materialized='view',schema='stg')}}
Select
	[CONTACTSALUTATIONID] [ContactSalutationID],
	cast([NAME] as nvarchar(4000)) [Name],
	[CREATED] [Created],
	[UPDATEEVENTID] [UpdateEventID]
From stg.[Auct_ContactSalutation_Raw]
