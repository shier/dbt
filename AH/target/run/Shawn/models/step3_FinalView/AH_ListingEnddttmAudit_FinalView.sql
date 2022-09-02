create view "stg"."AH_ListingEnddttmAudit_FinalView__dbt_tmp" as
    
Select
	[ID],[SqlDaTestamp],[Enddttm],[SourceListingID],[ListingID],[Origin] 
From stg.[AH_ListingEnddttmAudit_Incr] 
Where [dbt_valid_to] is null
