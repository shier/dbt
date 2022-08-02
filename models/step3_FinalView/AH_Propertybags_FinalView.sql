{{ config(materialized='view',schema='stg')}}
Select
	[ID],[CreatedOn],[UpdatedOn],[DeletedOn] 
From stg.[AH_Propertybags_Incr] 
Where [dbt_valid_to] is null