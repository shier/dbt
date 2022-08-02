{{ config(materialized='view',schema='stg')}}
Select
	[ID],[EmailName],[UpdatedOn],[DeletedOn],[CreatedOn],[UserID] 
From stg.[AH_UserOptOut_Incr] 
Where [dbt_valid_to] is null