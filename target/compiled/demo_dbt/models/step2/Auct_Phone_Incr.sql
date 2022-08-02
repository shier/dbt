
With hashData as (
		Select
			HASHBYTES('MD5', concat(Cast(CountryID as varchar), Cast(UpdateEventID as varchar), Cast(Created as varchar), WebPhoneID, AreaCode, PhoneNumber, Active)) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_Phone_Inter]
	)
Select * From hashData
