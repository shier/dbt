{{ config(materialized='view',schema='stg')}}
Select
	[MerchantID],[Token],[CreatedDate],[LastloadedDate] 
From stg.[Mer_CloverMerchant_Incr] 
Where [dbt_valid_to] is null