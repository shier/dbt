
With hashData as (
		Select
			HASHBYTES('MD5', concat(Cast(CountryCode as varchar), Cast(UpdateEventID as varchar), Cast(DisplayOrder as varchar), Cast(Created as varchar), Name, SynchID)) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_Country_Inter]
	)
Select * From hashData
