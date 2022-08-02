create view "stg"."CC_ListingTrackLegacy_FinalView__dbt_tmp" as
    
Select
	[ListingID],[ImportID],[ImportSource],[ImportDate],[Views] 
From stg.[CC_ListingTrackLegacy_Incr] 
Where [dbt_valid_to] is null
