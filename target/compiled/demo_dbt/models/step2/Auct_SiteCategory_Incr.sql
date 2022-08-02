
With hashData as (
		Select
			HASHBYTES('MD5', concat(Name, Cast(FeeCategoryID as varchar))) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_SiteCategory_Inter]
	)
Select * From hashData
