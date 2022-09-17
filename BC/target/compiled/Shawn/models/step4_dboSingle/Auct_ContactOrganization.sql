
Select
	cast([ContactOrganizationID] as int) [CONTACTORGANIZATIONID],
	cast([OrganizationID] as int) [ORGANIZATIONID],
	cast([ContactID] as int) [CONTACTID],
	cast([Created] as DATETIME) [CREATED],
	cast([UpdateEventID] as int) [UPDATEEVENTID] 
From stg.[Auct_ContactOrganization_FinalView]