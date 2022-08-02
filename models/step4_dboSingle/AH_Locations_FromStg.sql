{{ config(materialized='table',schema='dbo')}}
Select
	cast([ID] as int) [ID],
	cast([Name] as nvarchar(4000)) [Name],
	cast([Description] as nvarchar(4000)) [Description],
	cast([LastUpdatedUser] as nvarchar(4000)) [LastUpdatedUser],
	cast([CreatedOn] as datetime) [CreatedOn],
	cast([UpdatedOn] as datetime) [UpdatedOn],
	cast([DeletedOn] as datetime) [DeletedOn],
	cast([Amount] as numeric(194)) [Amount],
	cast([PayToproceed] as bit) [PayToproceed] 
From stg.[AH_Locations_FinalView]