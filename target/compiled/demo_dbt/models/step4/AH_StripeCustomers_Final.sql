
Select
	[ID],[CreatedOn],[UpdatedOn],[DeletedOn],[SellerID],[BuyerID],[CustomerID] 
From stg.[AH_StripeCustomers_Incr] 
Where [dbt_valid_to] is null