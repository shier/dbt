{{ config(materialized='view',schema='stg')}}
Select
	[ID],[Enabled],[CreatedOn],[UpdatedOn],[DeletedOn],[Name] 
From stg.[AH_SMStemplates_Incr] 
Where [dbt_valid_to] is null