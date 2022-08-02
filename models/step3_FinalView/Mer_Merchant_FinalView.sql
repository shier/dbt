{{ config(materialized='view',schema='stg')}}
Select
	[MerchantID],[CreatedDate],[LastloadedDate],[Token],[Description] 
From stg.[Mer_Merchant_Incr] 
Where [dbt_valid_to] is null