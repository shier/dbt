
Select
	[DepartmentChargePaymentID],[PaymentID],[ChargeID],[VendorAuctionID],[UpdateEventID],[SponsorAuctionID],[Created],[Amount] 
From stg.[Auct_DepartmentChargePayment_Incr] 
Where [dbt_valid_to] is null