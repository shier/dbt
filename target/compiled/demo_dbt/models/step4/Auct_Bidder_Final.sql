
Select
	[BidderID],[BidLimit],[BidderNumber],[AnniversaryDate],[Created],[AddressID],[ShippingAddressID],[ContactPhoneID],[BidderTypeID],[BidderStatusID],[CustomerAccountID],[ApprovedBy],[UpdateEventID],[PaymentMethodID],[Comments] 
From stg.[Auct_Bidder_Incr] 
Where [dbt_valid_to] is null