create view "stg"."AH_SubmittedListingPayment_FinalView__dbt_tmp" as
    
Select
	[ID],[TransactionID],[Amount],[CreatedOn],[UpdatedOn],[ListingID],[ConsignorID],[HasproMarketing],[HasproPhotography] 
From stg.[AH_SubmittedListingPayment_Incr] 
Where [dbt_valid_to] is null
