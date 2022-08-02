
Select
	[ChargePaymentID],[Created],[ConsignmentID],[BidderID],[VendorID],[MediaID],[SponsorID],[ChargeID],[RefundState],[PaymentID],[UpdateEventID],[Amount] 
From stg.[Auct_ChargePayment_Incr] 
Where [dbt_valid_to] is null