{{ config(materialized='table',schema='dbo')}}
Select
	cast([ID] as int) [ID],
	cast([CreatedOn] as datetime) [CreatedOn],
	cast([UpdatedOn] as datetime) [UpdatedOn],
	cast([DeletedOn] as datetime) [DeletedOn],
	cast([CategoryID] as int) [CategoryID],
	cast([CustomFieldID] as int) [CustomFieldID],
	cast([LastUpdatedUser] as nvarchar(4000)) [LastUpdatedUser] 
From stg.[AH_CategoryCustomFields_FinalView]