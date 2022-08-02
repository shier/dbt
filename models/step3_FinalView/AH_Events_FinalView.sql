{{ config(materialized='view',schema='stg')}}
Select
	[ID],[CreatedOn],[UpdatedOn],[DeletedOn],[Name] 
From stg.[AH_Events_Incr] 
Where [dbt_valid_to] is null