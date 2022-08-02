create view "stg"."AH_SalesTaxRates_FinalView__dbt_tmp" as
    
Select
	[ID],[LastUpdatedUser],[Shipping],[DeletedOn],[CreatedOn],[UpdatedOn],[StateID],[UserID],[TaxRate] 
From stg.[AH_SalesTaxRates_Incr] 
Where [dbt_valid_to] is null
