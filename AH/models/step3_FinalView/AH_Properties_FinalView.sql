{{ config(materialized='view',schema='stg')}}
Select
	[ID],[Value],[Name],[CreatedOn],[UpdatedOn],[DeletedOn],[LineItemID] 
From stg.[AH_Properties_Incr] 
Where [dbt_valid_to] is null