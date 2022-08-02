
Select
	[PaymentMethodID],[MinimumDepositValue],[Created],[UpdateEventID],[ProcessorID],[WebDisplayBit],[VendorDisplay],[ConsignDisplay],[MediaDisplay],[SponsorDisplay],[BidderDisplay],[LotDisplay],[Name],[BidDisplay],[WebDisplayName],[WebDescription],[BCPaymentCode] 
From stg.[Auct_PaymentMethod_Incr] 
Where [dbt_valid_to] is null