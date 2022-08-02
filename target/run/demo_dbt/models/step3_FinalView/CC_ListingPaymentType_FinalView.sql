create view "stg"."CC_ListingPaymentType_FinalView__dbt_tmp" as
    
Select
	[ID],[Description] 
From stg.[CC_ListingPaymentType_Incr] 
Where [dbt_valid_to] is null
