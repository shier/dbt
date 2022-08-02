{{ config(materialized='view',schema='stg')}}
Select
	[ListingID],[Year],[Month],[Day],[Views],[BatchDate],[BatchID] 
From stg.[CC_ListingTrackRollup_Incr] 
Where [dbt_valid_to] is null