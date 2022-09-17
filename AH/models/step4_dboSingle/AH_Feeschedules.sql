{{ config(materialized='table',schema='dbo')}}
Select
	cast([PayToproceed] as bit) [PayToProceed],
	cast([CreatedOn] as datetime) [CreatedOn],
	cast([UpdatedOn] as datetime) [UpdatedOn],
	cast([DeletedOn] as datetime) [DeletedOn],
	cast([ID] as int) [Id],
	cast([EventID] as int) [EventId],
	cast([ListingTypeID] as int) [ListingTypeId],
	cast([Description] as nvarchar(4000)) [Description],
	cast([LastUpdatedUser] as nvarchar(4000)) [LastUpdatedUser],
	cast([Name] as nvarchar(4000)) [Name] 
From stg.[AH_Feeschedules_FinalView]