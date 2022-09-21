
Select
	cast([Amount] as numeric(19,4)) [AMOUNT],
	cast([DepartmentChargePaymentID] as int) [DEPARTMENTCHARGEPAYMENTID],
	cast([PaymentID] as int) [PAYMENTID],
	cast([ChargeID] as int) [CHARGEID],
	cast([VendorAuctionID] as int) [VENDORAUCTIONID],
	cast([Created] as DATETIME) [CREATED],
	cast([UpdateEventID] as int) [UPDATEEVENTID],
	cast([SponsorAuctionID] as int) [SPONSORAUCTIONID] 
From stg.[Auct_DepartmentChargePayment_FinalView]