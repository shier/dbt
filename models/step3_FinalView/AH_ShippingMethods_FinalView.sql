{{ config(materialized='view',schema='stg')}}
Select
	[ID],[DisplayOrder],[CreatedOn],[UpdatedOn],[DeletedOn],[Name] 
From stg.[AH_ShippingMethods_Incr] 
Where [dbt_valid_to] is null