create view "stg"."AH_StripeCustomers_InterView__dbt_tmp" as
    
Select
	[Id] [ID],
	[SellerId] [SellerID],
	[BuyerId] [BuyerID],
	[CreatedOn] [CreatedOn],
	[UpdatedOn] [UpdatedOn],
	[DeletedOn] [DeletedOn],
	cast([CustomerId] as nvarchar(4000)) [CustomerID]
From stg.[AH_StripeCustomers_Raw]
