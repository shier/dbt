
With hashData as (
		Select
			HASHBYTES('MD5', concat(Cast(ContactTypeID as varchar), Cast(CustomerAccountID as varchar), Cast(UpdateEventID as varchar), Cast(Created as varchar), ContactTitle)) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_Contactcontact_Inter]
	)
Select * From hashData
