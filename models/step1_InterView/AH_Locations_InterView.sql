{{ config(materialized='view',schema='stg')}}
Select
	[Id] [ID],
	cast([Name] as nvarchar(4000)) [Name],
	cast([Description] as nvarchar(4000)) [Description],
	cast([LastUpdatedUser] as nvarchar(4000)) [LastUpdatedUser],
	[CreatedOn] [CreatedOn],
	[UpdatedOn] [UpdatedOn],
	[DeletedOn] [DeletedOn],
	[Amount] [Amount],
	[PayToProceed] [PayToproceed]
From stg.[AH_Locations_Raw]
