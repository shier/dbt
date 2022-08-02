{{ config(materialized='view',schema='stg')}}
Select
	[Id] [ID],
	[CreatedOn] [CreatedOn],
	[UpdatedOn] [UpdatedOn],
	[DeletedOn] [DeletedOn],
	cast([ISOCurrencySymbol] as nvarchar(4000)) [Isocurrencysymbol],
	cast([CurrencySymbol] as nvarchar(4000)) [Currencysymbol],
	cast([CurrencyEnglishName] as nvarchar(4000)) [CurrencyenglishName],
	cast([CurrencyNativeName] as nvarchar(4000)) [CurrencynativeName]
From stg.[AH_Customcurrencies_Raw]
