
With hashData as (
		Select
			HASHBYTES('MD5', concat(Name, ActiveImageURL, InActiveImageURL, ReservedImageURL, Cast(SiteCategoryID as varchar), Cast(CanHaveChildren as varchar))) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_SiteType_Inter]
	)
Select * From hashData
