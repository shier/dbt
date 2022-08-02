
With hashData as (
		Select
			HASHBYTES('SHA2_256', concat(Cast([EventID] as varchar), Cast([SiteID] as varchar))) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_EventSite_Inter]
	)
Select * From hashData
