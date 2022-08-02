{{ config(materialized='view',schema='stg')}}
Select
	[ID],[Active],[MinimumBidHold],[BasicplanPrice],[ProPhotographyPrice],[ProMarketingPrice],[Minfraudscore],[UpdatedOn],[CreatedOn],[MaximumBidCharge],[BidHoldPercentage] 
From stg.[AH_PaymentConfigurationTable_Incr] 
Where [dbt_valid_to] is null