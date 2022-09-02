create view "stg"."AH_StripeCustomers_FinalView__dbt_tmp" as
    
Select
	[ID],[SellerID],[BuyerID],[CreatedOn],[UpdatedOn],[DeletedOn],[CustomerID] 
From stg.[AH_StripeCustomers_Incr] 
Where [dbt_valid_to] is null
