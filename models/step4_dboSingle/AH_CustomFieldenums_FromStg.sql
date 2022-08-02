{{ config(materialized='table',schema='dbo')}}
Select
	cast([ID] as int) [ID],
	cast([Name] as nvarchar(4000)) [Name],
	cast([Value] as nvarchar(4000)) [Value],
	cast([CreatedOn] as datetime) [CreatedOn],
	cast([UpdatedOn] as datetime) [UpdatedOn],
	cast([DeletedOn] as datetime) [DeletedOn],
	cast([CustomFieldID] as int) [CustomFieldID],
	cast([Enabled] as bit) [Enabled] 
From stg.[AH_CustomFieldenums_FinalView]