{{ config(materialized='table',schema='dbo')}}
Select
	cast([ID] as int) [ID],
	cast([Name] as nvarchar(4000)) [Name],
	cast([Code] as nvarchar(4000)) [Code],
	cast([CreatedOn] as datetime) [CreatedOn],
	cast([UpdatedOn] as datetime) [UpdatedOn],
	cast([DeletedOn] as datetime) [DeletedOn],
	cast([Enabled] as bit) [Enabled],
	cast([CountryID] as int) [CountryID] 
From stg.[AH_States_FinalView]