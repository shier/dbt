{{ config(materialized='view',schema='stg')}}
Select
	[ID],[Enabled],[UpdatedOn],[DeletedOn],[CreatedOn],[Name] 
From stg.[AH_Emailtemplates_Incr] 
Where [dbt_valid_to] is null