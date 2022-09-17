
Select
	cast([IsBID] as bit) [IsBid],
	cast([Approved] as bit) [IsApproved],
	cast([ParentID] as int) [ParentID],
	cast([ReportCount] as int) [ReportCount],
	cast([ID] as int) [CommentID],
	cast([UserID] as int) [UserID],
	cast([ListingID] as int) [ListingID],
	cast([CreatedOn] as datetime) [Created],
	cast([UpdatedOn] as datetime) [UpdatedDate],
	cast([DeletedOn] as datetime) [DeletedDate],
	cast([UserName] as nvarchar(500)) [Name],
	cast([Comment] as nvarchar(4000)) [Comment] 
From stg.[AH_ListingComments_FinalView]