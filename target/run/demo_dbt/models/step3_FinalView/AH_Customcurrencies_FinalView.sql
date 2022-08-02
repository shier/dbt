create view "stg"."AH_Customcurrencies_FinalView__dbt_tmp" as
    
Select
	[ID],[CreatedOn],[UpdatedOn],[DeletedOn],[Isocurrencysymbol],[Currencysymbol],[CurrencyenglishName],[CurrencynativeName] 
From stg.[AH_Customcurrencies_Incr] 
Where [dbt_valid_to] is null
