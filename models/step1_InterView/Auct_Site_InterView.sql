{{ config(materialized='view',schema='stg')}}
Select
	[SITEID] [SiteID],
	cast([NAME] as nvarchar(4000)) [Name],
	[PARENTSITEID] [ParentSiteID],
	[VENUEID] [VenueID],
	[SITETYPEID] [SiteTypeID],
	[ACTIVE] [Active]
From stg.[Auct_Site_Raw]
