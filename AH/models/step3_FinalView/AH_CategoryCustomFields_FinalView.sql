{{ config(materialized='view',schema='stg')}}
Select
	[ID],[CreatedOn],[UpdatedOn],[DeletedOn],[CategoryID],[CustomFieldID],[LastUpdatedUser] 
From stg.[AH_CategoryCustomFields_Incr] 
Where [dbt_valid_to] is null