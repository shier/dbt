{{ config(materialized='view',schema='stg')}}
Select
	[CONTACTORGANIZATIONID] [ContactOrganizationID],
	[ORGANIZATIONID] [OrganizationID],
	[CONTACTID] [ContactID],
	[CREATED] [Created],
	[UPDATEEVENTID] [UpdateEventID]
From stg.[Auct_ContactOrganization_Raw]
