
With hashData as (
		Select
			HASHBYTES('MD5', concat(Cast(Created as varchar), Cast(MailingTypeID as varchar), Cast(ContactID as varchar), Cast(UpdateEventID as varchar))) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_ContactMailing_Inter]
	)
Select * From hashData
