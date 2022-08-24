create view "stg"."Auct_ContactSalutation_InterView__dbt_tmp" as
    
Select
	[CONTACTSALUTATIONID] [ContactSalutationID],
	cast([NAME] as nvarchar(4000)) [Name],
	[CREATED] [Created],
	[UPDATEEVENTID] [UpdateEventID]
From stg.[Auct_ContactSalutation_Raw]
