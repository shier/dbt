{{ config(materialized='table',schema='dbo')}}
Select
	cast([ID] as int) [Id],
	cast([CreatedOn] as datetime) [CreatedOn],
	cast([UpdatedOn] as datetime) [UpdatedOn],
	cast([DeletedOn] as datetime) [DeletedOn],
	cast([Isocurrencysymbol] as nvarchar(4000)) [ISOCurrencySymbol],
	cast([Currencysymbol] as nvarchar(4000)) [CurrencySymbol],
	cast([CurrencyenglishName] as nvarchar(4000)) [CurrencyEnglishName],
	cast([CurrencynativeName] as nvarchar(4000)) [CurrencyNativeName] 
From stg.[AH_Customcurrencies_FinalView]