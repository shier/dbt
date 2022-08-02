
With hashData as (
		Select
			HASHBYTES('MD5', concat(Cast(AddressID as varchar), Cast(ShippingAddressID as varchar), Cast(Active as varchar), Name, ShippingName)) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_Venue_Inter]
	)
Select * From hashData
