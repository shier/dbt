{{ config(materialized='view',schema='stg')}}
Select
	[DepartmentChargePaymentID],[Amount],[PaymentID],[ChargeID],[VendorAuctionID],[Created],[UpdateEventID],[SponsorAuctionID] 
From stg.[Auct_DepartmentChargePayment_Incr] 
Where [dbt_valid_to] is null