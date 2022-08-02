create view "stg"."Auct_BannerType_FinalView__dbt_tmp" as
    
Select
	[BannerTypeID],[Name],[Created],[UpdateEventID] 
From stg.[Auct_BannerType_Incr] 
Where [dbt_valid_to] is null
