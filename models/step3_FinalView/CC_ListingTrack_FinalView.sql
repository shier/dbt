{{ config(materialized='view',schema='stg')}}
Select
	[ID],[ListingID],[ListingActionID],[UserID],[CreateDate],[ModifyDate],[IsActive],[ReferringPage],[DataToken],[UserAgent] 
From stg.[CC_ListingTrack_Incr] 
Where [dbt_valid_to] is null