{{ config(materialized='view',schema='stg')}}
Select
	[Id] [ID],
	[IsActive] [IsActive],
	cast([StateCode] as nvarchar(4000)) [StateCode],
	cast([Name] as nvarchar(4000)) [Name],
	cast([CountryCode] as nvarchar(4000)) [CountryCode],
	cast([StateNameSlug] as nvarchar(4000)) [StateNameslug],
	[CreateDate] [CreateDate],
	[ModifyDate] [ModifyDate],
	[CountryId] [CountryID]
From stg.[CC_States_Raw]
