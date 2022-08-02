{{ config(materialized='table',schema='dbo')}}
Select
	cast([SiteID] as int) [SiteID],
	cast([Name] as nvarchar(4000)) [Name],
	cast([ParentSiteID] as int) [ParentSiteID],
	cast([VenueID] as int) [VenueID],
	cast([SiteTypeID] as int) [SiteTypeID],
	cast([Active] as int) [Active] 
From stg.[Auct_Site_FinalView]