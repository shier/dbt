{{ config(materialized='view',schema='stg')}}
Select
	[ID],[BuyerID],[ListingID],[UpdatedOn],[CreatedOn],[TransactionID],[ChargeAmount],[TotalBID],[BidHoldPercentage],[MaximumBidCharge] 
From stg.[AH_ListingPaymentCharge_Incr] 
Where [dbt_valid_to] is null