
Select
	Id ID,
	UserId UserID,
	ListingId ListingID,
	CreatedOn Createdon,
	UpdatedOn Updatedon,
	DeletedOn Deletedon,
	cast(LastUpdatedUser as nvarchar(4000)) LastUpdatedUser
From AH_Watches_Raw