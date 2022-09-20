
Select
	cast([UpdatedOn] as datetime) [UpdatedOn],
	cast([DeletedOn] as datetime) [DeletedOn],
	cast([CreatedOn] as datetime) [CreatedOn],
	cast([UserID] as int) [UserId],
	cast([ID] as int) [Id],
	cast([CountryID] as int) [CountryId],
	cast([Street1] as varchar(128)) [Street1],
	cast([Street2] as varchar(128)) [Street2],
	cast([City] as nvarchar(100)) [City],
	cast([Stateregion] as nvarchar(50)) [StateRegion],
	cast([ZipPostal] as nvarchar(50)) [ZipPostal],
	cast([LastUpdatedUser] as nvarchar(500)) [LastUpdatedUser],
	cast([Description] as nvarchar(4000)) [Description],
	cast([FirstName] as nvarchar(500)) [FirstName],
	cast([LastName] as nvarchar(500)) [LastName] 
From stg.[AH_Addresses_FinalView]