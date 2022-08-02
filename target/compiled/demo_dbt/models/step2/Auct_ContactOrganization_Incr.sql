
With hashData as (
		Select
			HASHBYTES('MD5', concat(Cast(ContactID as varchar), Cast(UpdateEventID as varchar), Cast(OrganizationID as varchar), Cast(Created as varchar))) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_ContactOrganization_Inter]
	)
Select * From hashData
