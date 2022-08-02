
With hashData as (
		Select
			HASHBYTES('MD5', concat(Cast(Active as varchar), Name, TrackingURL)) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_PackageCarrier_Inter]
	)
Select * From hashData
