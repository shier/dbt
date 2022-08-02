
Select
	Amount Amount,
	cast(TransactionId as nvarchar(4000)) TransactionID,
	CreatedOn Createdon,
	UpdatedOn Updatedon,
	HasProPhotography HasproPhotography,
	HasProMarketing HasproMarketing,
	Id ID,
	ConsignorId ConsignorID,
	ListingId ListingID
From AH_SubmittedListingPayment_Raw