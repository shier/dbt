{{ config(materialized='table',schema='dbo')}}
Select
	cast([ID] as int) [ID],
	cast([IsActive] as bit) [IsActive],
	cast([StateCode] as nvarchar(4000)) [StateCode],
	cast([Name] as nvarchar(4000)) [Name],
	cast([CountryCode] as nvarchar(4000)) [CountryCode],
	cast([StateNameslug] as nvarchar(4000)) [StateNameslug],
	cast([CreateDate] as datetime) [CreateDate],
	cast([ModifyDate] as datetime) [ModifyDate],
	cast([CountryID] as int) [CountryID] 
From stg.[CC_States_FinalView]