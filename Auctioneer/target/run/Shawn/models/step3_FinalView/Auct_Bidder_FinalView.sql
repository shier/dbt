create view "stg"."Auct_Bidder_FinalView__dbt_tmp" as
    
Select
	[BidderID],[BidderNumber],[BidLimit],[BidderTypeID],[BidderStatusID],[CustomerAccountID],[AnniversaryDate],[ApprovedBy],[Comments],[Created],[UpdateEventID],[PaymentMethodID],[AddressID],[ShippingAddressID],[ContactPhoneID] 
From stg.[Auct_Bidder_Incr] 
Where [dbt_valid_to] is null
