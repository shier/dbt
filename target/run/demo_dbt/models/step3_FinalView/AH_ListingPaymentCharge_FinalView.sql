create view "stg"."AH_ListingPaymentCharge_FinalView__dbt_tmp" as
    
Select
	[ID],[BuyerID],[ListingID],[UpdatedOn],[CreatedOn],[TransactionID],[ChargeAmount],[TotalBID],[BidHoldPercentage],[MaximumBidCharge] 
From stg.[AH_ListingPaymentCharge_Incr] 
Where [dbt_valid_to] is null
