{{ config(materialized='view',schema='stg')}}
Select
	[ID],[SqlDaTestamp],[Enddttm],[SourceListingID],[ListingID],[Origin] 
From stg.[AH_ListingEnddttmAudit_Incr] 
Where [dbt_valid_to] is null