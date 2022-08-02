{{ config(materialized='view',schema='stg')}}
Select
	[ID],[CreatedOn],[UpdatedOn],[DeletedOn],[LastUpdatedUser],[Name] 
From stg.[AH_Roles_Incr] 
Where [dbt_valid_to] is null