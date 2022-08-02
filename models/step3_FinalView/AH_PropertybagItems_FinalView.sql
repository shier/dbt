{{ config(materialized='view',schema='stg')}}
Select
	[ID],[PropertybagID],[CreatedOn],[UpdatedOn],[DeletedOn],[Name],[Value] 
From stg.[AH_PropertybagItems_Incr] 
Where [dbt_valid_to] is null