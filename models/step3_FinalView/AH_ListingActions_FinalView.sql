{{ config(materialized='view',schema='stg')}}
Select
	[ID],[Description],[LastUpdatedUser],[Reason],[Status],[CreatedOn],[UpdatedOn],[DeletedOn],[Actiondttm],[Amount],[ProxyAmount],[Userentered],[UserID],[ListingID],[Quantity] 
From stg.[AH_ListingActions_Incr] 
Where [dbt_valid_to] is null