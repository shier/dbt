
With hashData as (
		Select
			HASHBYTES('SHA2_256', concat(Cast([DynamicPropertyID] as varchar), Cast([SiteTypeID] as varchar), Cast([IsRequired] as varchar))) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_SiteTypeProperty_Inter]
	)
Select * From hashData