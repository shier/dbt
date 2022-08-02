{{ config(materialized='view',schema='stg')}}
Select
	[ChargePaymentID],[Amount],[PaymentID],[Created],[UpdateEventID],[ConsignmentID],[BidderID],[VendorID],[MediaID],[SponsorID],[ChargeID],[RefundState] 
From stg.[Auct_ChargePayment_Incr] 
Where [dbt_valid_to] is null