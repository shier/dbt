create view "stg"."Auct_Site_FinalView__dbt_tmp" as
    
Select
	[SiteID],[Name],[ParentSiteID],[VenueID],[SiteTypeID],[Active] 
From stg.[Auct_Site_Incr] 
Where [dbt_valid_to] is null
