
Select
	[ID],[CreatedOn],[UpdatedOn],[DeletedOn],[Currencysymbol],[CurrencyenglishName],[CurrencynativeName],[Isocurrencysymbol] 
From stg.[AH_Customcurrencies_Incr] 
Where [dbt_valid_to] is null