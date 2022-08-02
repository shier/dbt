
Select
	Id ID,
	ExpirationMonth ExpirationMonth,
	ExpirationYear ExpirationYear,
	CreditCardTypeId CreditCardTypeID,
	CreatedOn Createdon,
	UpdatedOn Updatedon,
	DeletedOn Deletedon,
	UserId UserID,
	AddressId AddressID,
	cast(CardNumber as nvarchar(4000)) CardNumber,
	cast(LastUpdatedUser as nvarchar(4000)) LastUpdatedUser,
	cast(LastFourDigits as nvarchar(4000)) LastFourdigits,
	cast(Description as nvarchar(4000)) Description
From AH_CreditCards_Raw