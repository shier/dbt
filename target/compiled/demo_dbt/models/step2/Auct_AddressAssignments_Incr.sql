
With hashData as (
		Select
			HASHBYTES('MD5', concat(Cast(CustomerAccountID as varchar), Cast(AddressStatusID as varchar), Cast(UpdateEventID as varchar), Cast(CompanyID as varchar), Cast(AddressTypeID as varchar), Cast(AddressID as varchar), IsDefault, Adddescr)) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_AddressAssignments_Inter]
	)
Select * From hashData
