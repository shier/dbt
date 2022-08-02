
Select
	[ListingID],[BatchID],[BatchDate],[Day],[Views],[Year],[Month] 
From stg.[CC_ListingTrackrollup_Incr] 
Where [dbt_valid_to] is null