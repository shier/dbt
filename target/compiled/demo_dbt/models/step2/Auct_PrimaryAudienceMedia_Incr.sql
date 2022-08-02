
With hashData as (
		Select
			HASHBYTES('MD5', concat(Cast(Created as varchar), Cast(UpdateEventID as varchar), Cast(MediaID as varchar), Cast(PrimaryAudienceID as varchar))) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_PrimaryAudienceMedia_Inter]
	)
Select * From hashData
