
With hashData as (
		Select
			HASHBYTES('MD5', concat(Cast(OrderBy as varchar), Cast(FeeTypeID as varchar), Cast(StartDate as varchar), Cast(EndDate as varchar), Cast(Created as varchar), Cast(Active as varchar), Name, CreatedByUser)) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_Amenities_Inter]
	)
Select * From hashData
