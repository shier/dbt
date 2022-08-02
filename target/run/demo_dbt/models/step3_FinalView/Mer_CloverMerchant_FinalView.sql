create view "stg"."Mer_CloverMerchant_FinalView__dbt_tmp" as
    
Select
	[MerchantID],[Token],[CreatedDate],[LastloadedDate] 
From stg.[Mer_CloverMerchant_Incr] 
Where [dbt_valid_to] is null
