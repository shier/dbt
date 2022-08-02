
Select
	[ID],[TaxRate],[LastUpdatedUser],[Shipping],[UpdatedOn],[DeletedOn],[CreatedOn],[UserID],[StateID] 
From stg.[AH_SalesTaxRates_Incr] 
Where [dbt_valid_to] is null