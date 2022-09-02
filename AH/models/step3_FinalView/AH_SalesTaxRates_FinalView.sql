{{ config(materialized='view',schema='stg')}}
Select
	[ID],[LastUpdatedUser],[Shipping],[DeletedOn],[CreatedOn],[UpdatedOn],[StateID],[UserID],[TaxRate] 
From stg.[AH_SalesTaxRates_Incr] 
Where [dbt_valid_to] is null