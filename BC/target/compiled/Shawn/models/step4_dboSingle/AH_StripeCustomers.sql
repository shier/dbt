
Select
	cast([ID] as int) [Id],
	cast([SellerID] as int) [SellerId],
	cast([BuyerID] as int) [BuyerId],
	cast([CreatedOn] as datetime) [CreatedOn],
	cast([UpdatedOn] as datetime) [UpdatedOn],
	cast([DeletedOn] as datetime) [DeletedOn],
	cast([CustomerID] as nvarchar(4000)) [CustomerId] 
From stg.[AH_StripeCustomers_FinalView]