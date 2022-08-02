
Select
	Id ID,
	UserId UserID,
	ListingId ListingID,
	parentId ParentID,
	ReportCount ReportCount,
	IsBid IsBID,
	Approved Approved,
	CreatedOn Createdon,
	UpdatedOn Updatedon,
	DeletedOn Deletedon,
	cast(UserName as nvarchar(4000)) UserName,
	cast(Comment as nvarchar(4000)) Comment
From AH_ListingComments_Raw