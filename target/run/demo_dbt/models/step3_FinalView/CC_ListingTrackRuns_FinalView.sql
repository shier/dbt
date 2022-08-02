create view "stg"."CC_ListingTrackRuns_FinalView__dbt_tmp" as
    
Select
	[ID],[CreateDate],[ModifyDate],[StartDate],[EndDate],[StartID],[EndID],[IsActive] 
From stg.[CC_ListingTrackRuns_Incr] 
Where [dbt_valid_to] is null
