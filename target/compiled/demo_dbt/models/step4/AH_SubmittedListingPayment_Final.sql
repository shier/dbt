
Select
	[ID],[Amount],[TransactionID],[CreatedOn],[UpdatedOn],[HasproPhotography],[HasproMarketing],[ConsignorID],[ListingID] 
From stg.[AH_SubmittedListingPayment_Incr] 
Where [dbt_valid_to] is null