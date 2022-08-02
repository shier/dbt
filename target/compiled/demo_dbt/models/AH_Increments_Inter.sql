
Select
	PriceLevel PriceLevel,
	Amount Amount,
	cast(LastUpdatedUser as nvarchar(4000)) LastUpdatedUser,
	AuctionEventId AuctionEventID,
	Id ID,
	ListingTypeId ListingTypeID,
	CreatedOn Createdon,
	UpdatedOn Updatedon,
	DeletedOn Deletedon
From AH_Increments_Raw