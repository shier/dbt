{{ config(materialized='view',schema='stg')}}
Select
	[Id] [ID],
	cast([Code] as nvarchar(4000)) [Code],
	cast([LastUpdatedUser] as nvarchar(4000)) [LastUpdatedUser],
	[CreatedOn] [CreatedOn],
	[UpdatedOn] [UpdatedOn],
	[DeletedOn] [DeletedOn],
	[ConversionToUSD] [ConVersiontousd]
From stg.[AH_Currencies_Raw]
