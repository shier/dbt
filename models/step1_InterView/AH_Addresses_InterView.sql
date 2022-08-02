{{ config(materialized='view',schema='stg')}}
Select
	[Id] [ID],
	[UpdatedOn] [UpdatedOn],
	[DeletedOn] [DeletedOn],
	[CreatedOn] [CreatedOn],
	[UserId] [UserID],
	[CountryId] [CountryID],
	cast([Street1] as nvarchar(4000)) [Street1],
	cast([Street2] as nvarchar(4000)) [Street2],
	cast([City] as nvarchar(4000)) [City],
	cast([StateRegion] as nvarchar(4000)) [Stateregion],
	cast([ZipPostal] as nvarchar(4000)) [ZipPostal],
	cast([LastUpdatedUser] as nvarchar(4000)) [LastUpdatedUser],
	cast([Description] as nvarchar(4000)) [Description],
	cast([FirstName] as nvarchar(4000)) [FirstName],
	cast([LastName] as nvarchar(4000)) [LastName]
From stg.[AH_Addresses_Raw]
