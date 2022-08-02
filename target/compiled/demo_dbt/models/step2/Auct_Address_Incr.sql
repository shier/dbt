
With hashData as (
		Select
			HASHBYTES('MD5', concat(Address1, Address2, City, StateProvince, PostalCode, Careof, Active, County, WeBaddressID, Cast(Created as varchar), Cast(Country as varchar), Cast(UpdateEventID as varchar))) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_Address_Inter]
	)
Select * From hashData
