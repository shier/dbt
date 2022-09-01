create view "stg"."Auct_ContactOrganization_InterView__dbt_tmp" as
    
Select
	[CONTACTORGANIZATIONID] [ContactOrganizationID],
	[ORGANIZATIONID] [OrganizationID],
	[CONTACTID] [ContactID],
	[CREATED] [Created],
	[UPDATEEVENTID] [UpdateEventID]
From stg.[Auct_ContactOrganization_Raw]
