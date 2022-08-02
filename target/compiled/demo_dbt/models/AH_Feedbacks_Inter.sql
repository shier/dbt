
Select
	Id ID,
	SendingUserId SEndingUserID,
	ReceivingUserId ReceivINgUserID,
	Rating Rating,
	ListingId ListingID,
	CreatedOn Createdon,
	UpdatedOn Updatedon,
	DeletedOn Deletedon,
	DateStamp DaTestamp,
	cast(Comment as nvarchar(4000)) Comment,
	cast(LastUpdatedUser as nvarchar(4000)) LastUpdatedUser,
	cast(ListingOwnerUsername as nvarchar(4000)) ListingOwnerUserName
From AH_Feedbacks_Raw