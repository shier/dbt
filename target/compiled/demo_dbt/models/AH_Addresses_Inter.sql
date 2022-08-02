
Select
	[CreatedOn] [Createdon],
	[UpdatedOn] [Updatedon],
	[DeletedOn] [Deletedon],
	[Id] [ID],
	[CountryId] [CountryID],
	[UserId] [UserID],
	cast([StateRegion] as nvarchar(4000)) [Stateregion],
	cast([ZipPostal] as nvarchar(4000)) [ZipPostal],
	cast([LastUpdatedUser] as nvarchar(4000)) [LastUpdatedUser],
	cast([Description] as nvarchar(4000)) [Description],
	cast([FirstName] as nvarchar(4000)) [FirstName],
	cast([LastName] as nvarchar(4000)) [LastName],
	cast([Street1] as nvarchar(4000)) [STreet1],
	cast([Street2] as nvarchar(4000)) [STreet2],
	cast([City] as nvarchar(4000)) [City]
From stg.[AH_Addresses_Raw]