
Select
	cast(LotNumber as nvarchar(4000)) LotNumber,
	cast(LastUpdatedUser as nvarchar(4000)) LastUpdatedUser,
	CreatedOn Createdon,
	UpdatedOn Updatedon,
	DeletedOn Deletedon,
	Id ID,
	ClosingGroup ClosingGroup,
	SoftClosingGroup SoftclosingGroup,
	LotOrder LotOrder,
	AuctionEventID AuctionEventID,
	IsSoftClosing Issoftclosing
From AH_Lots_Raw