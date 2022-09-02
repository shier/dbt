{{ config(materialized='view',schema='stg')}}
Select
	[ID],[Code],[LastUpdatedUser],[CreatedOn],[UpdatedOn],[DeletedOn],[ConVersiontousd] 
From stg.[AH_Currencies_Incr] 
Where [dbt_valid_to] is null