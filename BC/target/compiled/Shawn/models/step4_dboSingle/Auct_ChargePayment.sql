
Select
	cast([Amount] as numeric(19,4)) [AMOUNT],
	cast([ChargePaymentID] as int) [CHARGEPAYMENTID],
	cast([PaymentID] as int) [PAYMENTID],
	cast([Created] as datetime) [CREATED],
	cast([UpdateEventID] as int) [UPDATEEVENTID],
	cast([ConsignmentID] as int) [CONSIGNMENTID],
	cast([BidderID] as int) [BIDDERID],
	cast([VendorID] as int) [VENDORID],
	cast([MediaID] as int) [MEDIAID],
	cast([SponsorID] as int) [SPONSORID],
	cast([ChargeID] as int) [CHARGEID],
	cast([RefundState] as int) [REFUNDSTATE] 
From stg.[Auct_ChargePayment_FinalView]