
Select
	[ID],[ListingID],[ListingActionID],[UserID],[CreateDate],[ModifyDate],[ReferringPage],[DataToken],[UserAgent],[IsActive] 
From stg.[CC_ListingTrack_Incr] 
Where [dbt_valid_to] is null