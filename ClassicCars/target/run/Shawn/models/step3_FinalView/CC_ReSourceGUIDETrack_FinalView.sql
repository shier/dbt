create view "stg"."CC_ReSourceGUIDETrack_FinalView__dbt_tmp" as
    
Select
	[ID],[ReferringPage],[DestinationURL],[AdvertiserName],[IsActive],[CreateDate],[ModifyDate] 
From stg.[CC_ReSourceGUIDETrack_Incr] 
Where [dbt_valid_to] is null
