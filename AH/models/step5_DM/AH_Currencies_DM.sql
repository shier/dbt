{{ config(materialized='table',schema='stg')}}
SELECT
	[Id] AS [CurrencyId],
	[ConversionToUSD],
	[Code],
	[LastUpdatedUser],
	[CreatedOn] AS [CreatedDate],
	[UpdatedOn] AS [UpdatedDate],
	[DeletedOn] AS [DeletedDate]
FROM [stg].[AH_Currencies_FinalView];