{{ config(materialized='view',schema='stg')}}
Select
	[SiteID],[Name],[ParentSiteID],[VenueID],[SiteTypeID],[Active] 
From stg.[Auct_Site_Incr] 
Where [dbt_valid_to] is null