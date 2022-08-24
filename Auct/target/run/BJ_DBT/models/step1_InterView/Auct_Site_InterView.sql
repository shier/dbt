create view "dbo_stg"."Auct_Site_InterView__dbt_tmp" as
    
Select
	[SITEID] [SiteID],
	cast([NAME] as nvarchar(4000)) [Name],
	[PARENTSITEID] [ParentSiteID],
	[VENUEID] [VenueID],
	[SITETYPEID] [SiteTypeID],
	[ACTIVE] [Active]
From stg.[Auct_Site_Raw]
