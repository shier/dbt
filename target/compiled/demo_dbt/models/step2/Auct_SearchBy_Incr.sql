
With hashData as (
		Select
			HASHBYTES('MD5', concat(Name, Cast(SearchForID as varchar), Cast(DisplayOrder as varchar), Cast(Active as varchar))) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_SearchBy_Inter]
	)
Select * From hashData
