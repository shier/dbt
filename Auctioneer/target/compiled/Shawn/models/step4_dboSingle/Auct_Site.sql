
Select
	cast([SiteID] as int) [SITEID],
	cast([Name] as nvarchar(4000)) [NAME],
	cast([ParentSiteID] as int) [PARENTSITEID],
	cast([VenueID] as int) [VENUEID],
	cast([SiteTypeID] as int) [SITETYPEID],
	cast([Active] as int) [ACTIVE] 
From stg.[Auct_Site_FinalView]