
Select
	TaxRate TaxRate,
	cast(LastUpdatedUser as nvarchar(4000)) LastUpdatedUser,
	cast(Shipping as nvarchar(4000)) Shipping,
	UpdatedOn Updatedon,
	DeletedOn Deletedon,
	CreatedOn Createdon,
	Id ID,
	UserId UserID,
	StateId StateID
From AH_SalesTaxRates_Raw