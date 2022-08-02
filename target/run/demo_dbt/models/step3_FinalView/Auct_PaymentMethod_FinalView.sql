create view "stg"."Auct_PaymentMethod_FinalView__dbt_tmp" as
    
Select
	[PaymentMethodID],[MinimumDepositValue],[Name],[Created],[UpdateEventID],[BidDisplay],[VendorDisplay],[ConsignDisplay],[MediaDisplay],[SponsorDisplay],[BidderDisplay],[LotDisplay],[ProcessorID],[WebDisplayName],[WebDescription],[WebDisplayBit],[BCPaymentCode] 
From stg.[Auct_PaymentMethod_Incr] 
Where [dbt_valid_to] is null
