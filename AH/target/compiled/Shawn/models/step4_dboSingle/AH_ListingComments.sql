
Select
	cast([IsBID] as bit) [IsBid],
	cast([Approved] as bit) [Approved],
	cast([ParentID] as int) [parentId],
	cast([ReportCount] as int) [ReportCount],
	cast([ID] as int) [Id],
	cast([UserID] as int) [UserId],
	cast([ListingID] as int) [ListingId],
	cast([CreatedOn] as datetime) [CreatedOn],
	cast([UpdatedOn] as datetime) [UpdatedOn],
	cast([DeletedOn] as datetime) [DeletedOn],
	cast([UserName] as nvarchar(500)) [UserName],
	cast([Comment] as nvarchar(4000)) [Comment] 
From stg.[AH_ListingComments_FinalView]