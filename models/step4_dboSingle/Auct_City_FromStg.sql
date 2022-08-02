{{ config(materialized='table',schema='dbo')}}
Select
	cast([CityID] as int) [CityID],
	cast([Name] as nvarchar(4000)) [Name],
	cast([County] as nvarchar(4000)) [County],
	cast([State] as nvarchar(4000)) [State],
	cast([StateAbbreviation] as nvarchar(4000)) [StateAbbreviation],
	cast([PostalCode] as nvarchar(4000)) [PostalCode] 
From stg.[Auct_City_FinalView]