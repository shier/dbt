{{ config(materialized='table',schema='dbo')}}
Select
	cast([CreatedOn] as datetime) [CreatedOn],
	cast([UpdatedOn] as datetime) [UpdatedOn],
	cast([DeletedOn] as datetime) [DeletedOn],
	cast([ID] as int) [Id],
	cast([CategoryID] as int) [CategoryId],
	cast([CustomFieldID] as int) [CustomFieldId],
	cast([LastUpdatedUser] as nvarchar(4000)) [LastUpdatedUser] 
From stg.[AH_CategoryCustomFields_FinalView]