
Select
	[ID],[CreatedOn],[UpdatedOn],[BuyerID],[ListingID],[ChargeAmount],[TotalBID],[BidHoldPercentage],[MaximumBidCharge],[TransactionID] 
From stg.[AH_ListingPaymentCharge_Incr] 
Where [dbt_valid_to] is null