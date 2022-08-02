
Select
	CreatedOn Createdon,
	UpdatedOn Updatedon,
	DeletedOn Deletedon,
	Id ID,
	SellerId SellerID,
	BuyerId BuyerID,
	cast(CustomerId as nvarchar(4000)) CustomerID
From AH_StripeCustomers_Raw