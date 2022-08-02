create view "stg"."Mer_Merchant_FinalView__dbt_tmp" as
    
Select
	[MerchantID],[CreatedDate],[LastloadedDate],[Token],[Description] 
From stg.[Mer_Merchant_Incr] 
Where [dbt_valid_to] is null
