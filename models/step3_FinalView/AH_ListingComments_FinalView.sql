{{ config(materialized='view',schema='stg')}}
Select
	[ID],[IsBID],[Approved],[ParentID],[ReportCount],[UserID],[ListingID],[CreatedOn],[UpdatedOn],[DeletedOn],[UserName],[Comment] 
From stg.[AH_ListingComments_Incr] 
Where [dbt_valid_to] is null