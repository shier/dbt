
Select
	Amount Amount,
	cast(LastUpdatedUser as nvarchar(4000)) LastUpdatedUser,
	cast(OfferMessage as nvarchar(4000)) OfferMessage,
	cast(Status as nvarchar(4000)) Status,
	cast(DeclineMessage as nvarchar(4000)) DecLineMessage,
	CreatedOn Createdon,
	UpdatedOn Updatedon,
	DeletedOn Deletedon,
	ExpirationDTTM Expirationdttm,
	Quantity Quantity,
	ListingId ListingID,
	Id ID,
	SendingUserId SEndingUserID,
	ReceivingUserId ReceivINgUserID,
	BuyerId BuyerID
From AH_Offers_Raw