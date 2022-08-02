
Select
	[ID],[Active],[MaximumBidCharge],[BidHoldPercentage],[MinimumBidHold],[BasicplanPrice],[ProPhotographyPrice],[ProMarketingPrice],[CreatedOn],[UpdatedOn],[Minfraudscore] 
From stg.[AH_PaymentConfigurationTable_Incr] 
Where [dbt_valid_to] is null