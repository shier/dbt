
Select
	Id ID,
	ListingId ListingID,
	SenderId SEnderID,
	RecipientId RecipientID,
	MasterMessageId MasTerMessageID,
	DeletedOn Deletedon,
	Sent Sent,
	CreatedOn Createdon,
	UpdatedOn Updatedon,
	cast(SenderStatus as nvarchar(4000)) SEnderStatus,
	cast(RecipientStatus as nvarchar(4000)) RecipientStatus,
	cast(LastUpdatedUser as nvarchar(4000)) LastUpdatedUser,
	cast(Subject as nvarchar(4000)) SuBJect,
	cast(Body as nvarchar(4000)) Body
From AH_UserMessages_Raw