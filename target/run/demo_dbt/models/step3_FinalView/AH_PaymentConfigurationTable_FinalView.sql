create view "stg"."AH_PaymentConfigurationTable_FinalView__dbt_tmp" as
    
Select
	[ID],[Active],[MinimumBidHold],[BasicplanPrice],[ProPhotographyPrice],[ProMarketingPrice],[Minfraudscore],[UpdatedOn],[CreatedOn],[MaximumBidCharge],[BidHoldPercentage] 
From stg.[AH_PaymentConfigurationTable_Incr] 
Where [dbt_valid_to] is null
