
Select
	[ID],[SqlDaTestamp],[Enddttm],[ListingID],[SourceListingID],[Origin] 
From stg.[AH_ListingEnddttmaudit_Incr] 
Where [dbt_valid_to] is null