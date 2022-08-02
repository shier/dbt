
With hashData as (
		Select
			HASHBYTES('MD5', concat(Cast(ParentSiteID as varchar), Cast(VenueID as varchar), Cast(SiteTypeID as varchar), Cast(Active as varchar), Name)) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_Site_Inter]
	)
Select * From hashData
