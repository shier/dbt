{{ config(materialized='view',schema='stg')}}
Select
	[Id] [ID],
	[CreatedOn] [CreatedOn],
	[UpdatedOn] [UpdatedOn],
	[DeletedOn] [DeletedOn],
	cast([Name] as nvarchar(4000)) [Name],
	cast([LastUpdatedUser] as nvarchar(4000)) [LastUpdatedUser]
From stg.[AH_ListingTypes_Raw]
