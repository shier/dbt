{{ config(materialized='table',schema='dbo')}}
Select
	cast([ID] as int) [ID],
	cast([Code] as nvarchar(4000)) [Code],
	cast([LastUpdatedUser] as nvarchar(4000)) [LastUpdatedUser],
	cast([CreatedOn] as datetime) [CreatedOn],
	cast([UpdatedOn] as datetime) [UpdatedOn],
	cast([DeletedOn] as datetime) [DeletedOn],
	cast([ConVersiontousd] as numeric(194)) [ConVersiontousd] 
From stg.[AH_Currencies_FinalView]