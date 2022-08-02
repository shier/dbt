{{ config(materialized='view',schema='stg')}}
Select
	[ID],[Name],[Code],[CreatedOn],[UpdatedOn],[DeletedOn],[Enabled],[StateRequired] 
From stg.[AH_Countries_Incr] 
Where [dbt_valid_to] is null