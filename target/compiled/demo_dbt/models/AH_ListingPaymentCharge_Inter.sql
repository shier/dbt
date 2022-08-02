
Select
	CreatedOn Createdon,
	UpdatedOn Updatedon,
	Id ID,
	BuyerId BuyerID,
	ListingId ListingID,
	ChargeAmount ChargeAmount,
	TotalBid TotalBID,
	BidHoldPercentage BidHoldPercentage,
	MaximumBidCharge MaximumBidCharge,
	cast(TransactionId as nvarchar(4000)) TransactionID
From AH_ListingPaymentCharge_Raw