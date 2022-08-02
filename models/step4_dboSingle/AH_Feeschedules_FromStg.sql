{{ config(materialized='table',schema='dbo')}}
Select
	cast([ID] as int) [ID],
	cast([PayToproceed] as bit) [PayToproceed],
	cast([CreatedOn] as datetime) [CreatedOn],
	cast([UpdatedOn] as datetime) [UpdatedOn],
	cast([DeletedOn] as datetime) [DeletedOn],
	cast([EventID] as int) [EventID],
	cast([ListingTypeID] as int) [ListingTypeID],
	cast([Description] as nvarchar(4000)) [Description],
	cast([LastUpdatedUser] as nvarchar(4000)) [LastUpdatedUser],
	cast([Name] as nvarchar(4000)) [Name] 
From stg.[AH_Feeschedules_FinalView]