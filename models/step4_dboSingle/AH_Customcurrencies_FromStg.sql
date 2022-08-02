{{ config(materialized='table',schema='dbo')}}
Select
	cast([ID] as int) [ID],
	cast([CreatedOn] as datetime) [CreatedOn],
	cast([UpdatedOn] as datetime) [UpdatedOn],
	cast([DeletedOn] as datetime) [DeletedOn],
	cast([Isocurrencysymbol] as nvarchar(4000)) [Isocurrencysymbol],
	cast([Currencysymbol] as nvarchar(4000)) [Currencysymbol],
	cast([CurrencyenglishName] as nvarchar(4000)) [CurrencyenglishName],
	cast([CurrencynativeName] as nvarchar(4000)) [CurrencynativeName] 
From stg.[AH_Customcurrencies_FinalView]