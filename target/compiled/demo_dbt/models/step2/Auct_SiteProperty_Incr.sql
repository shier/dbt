
With hashData as (
		Select
			HASHBYTES('SHA2_256', concat(Cast([SiteID] as varchar), Cast([DynamicPropertyID] as varchar), [Value])) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_SiteProperty_Inter]
	)
Select * From hashData
