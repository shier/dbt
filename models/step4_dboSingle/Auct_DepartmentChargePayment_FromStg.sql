{{ config(materialized='table',schema='dbo')}}
Select
	cast([DepartmentChargePaymentID] as int) [DepartmentChargePaymentID],
	cast([Amount] as numeric(19,4)) [Amount],
	cast([PaymentID] as int) [PaymentID],
	cast([ChargeID] as int) [ChargeID],
	cast([VendorAuctionID] as int) [VendorAuctionID],
	cast([Created] as DATETIME) [Created],
	cast([UpdateEventID] as int) [UpdateEventID],
	cast([SponsorAuctionID] as int) [SponsorAuctionID] 
From stg.[Auct_DepartmentChargePayment_FinalView]