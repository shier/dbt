
With hashData as (
		Select
			HASHBYTES('MD5', concat(WiredInternet, WirelessInternet, Name, Phonein, Cast(Created as varchar), Cast(BoothID as varchar), Cast(SpaceSizeID as varchar), Cast(AllocatedPower as varchar), Cast(UpdateEventID as varchar))) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_Space_Inter]
	)
Select * From hashData
