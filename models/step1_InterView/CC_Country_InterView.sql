{{ config(materialized='view',schema='stg')}}
Select
	[Id] [ID],
	cast([CountryCode] as nvarchar(4000)) [CountryCode],
	cast([Name] as nvarchar(4000)) [Name],
	cast([CurrencyCode] as nvarchar(4000)) [CurrencyCode],
	cast([CurrencyNumCode] as nvarchar(4000)) [CurrencynumCode],
	cast([CountryNameSlug] as nvarchar(4000)) [CountryNameslug],
	[DisplayOrder] [DisplayOrder],
	[CreateDate] [CreateDate],
	[ModifyDate] [ModifyDate],
	[IsActive] [IsActive]
From stg.[CC_Country_Raw]
