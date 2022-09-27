
Select
	cast([ID] as int) [Id],
	cast([UserID] as int) [UserId],
	cast([ListingID] as int) [ListingId],
	cast([DeletedOn] as datetime) [DeletedOn],
	cast([CreatedOn] as datetime) [CreatedOn],
	cast([UpdatedOn] as datetime) [UpdatedOn],
	cast([LastUpdatedUser] as nvarchar(500)) [LastUpdatedUser] 
From stg.[AH_Watches_FinalView]