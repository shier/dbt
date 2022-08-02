
Select
	SITEID SiteID,
	PARENTSITEID ParentSiteID,
	VENUEID VenueID,
	SITETYPEID SiteTypeID,
	ACTIVE Active,
	cast(NAME as nvarchar(4000)) Name
From Auct_Site_Raw