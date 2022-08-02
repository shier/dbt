{{ config(materialized='table',schema='dbo')}}
Select
	cast([ChargePaymentID] as int) [ChargePaymentID],
	cast([Amount] as numeric(19,4)) [Amount],
	cast([PaymentID] as int) [PaymentID],
	cast([Created] as datetime) [Created],
	cast([UpdateEventID] as int) [UpdateEventID],
	cast([ConsignmentID] as int) [ConsignmentID],
	cast([BidderID] as int) [BidderID],
	cast([VendorID] as int) [VendorID],
	cast([MediaID] as int) [MediaID],
	cast([SponsorID] as int) [SponsorID],
	cast([ChargeID] as int) [ChargeID],
	cast([RefundState] as int) [RefundState] 
From stg.[Auct_ChargePayment_FinalView]