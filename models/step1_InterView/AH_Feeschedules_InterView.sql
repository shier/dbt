{{ config(materialized='view',schema='stg')}}
Select
	[Id] [ID],
	[PayToProceed] [PayToproceed],
	[CreatedOn] [CreatedOn],
	[UpdatedOn] [UpdatedOn],
	[DeletedOn] [DeletedOn],
	[EventId] [EventID],
	[ListingTypeId] [ListingTypeID],
	cast([Description] as nvarchar(4000)) [Description],
	cast([LastUpdatedUser] as nvarchar(4000)) [LastUpdatedUser],
	cast([Name] as nvarchar(4000)) [Name]
From stg.[AH_Feeschedules_Raw]
