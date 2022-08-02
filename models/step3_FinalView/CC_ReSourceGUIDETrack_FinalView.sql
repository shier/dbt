{{ config(materialized='view',schema='stg')}}
Select
	[ID],[ReferringPage],[DestinationURL],[AdvertiserName],[IsActive],[CreateDate],[ModifyDate] 
From stg.[CC_ReSourceGUIDETrack_Incr] 
Where [dbt_valid_to] is null