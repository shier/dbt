
Select
	CreatedDate CreatedDate,
	LastLoadedDate LastloadedDate,
	cast(MerchantId as nvarchar(4000)) MerchantID,
	cast(Token as nvarchar(4000)) Token,
	cast(Description as nvarchar(4000)) Description
From Mer_Merchant_Raw