create view "dbo_stg"."Auct_ChargePayment_InterView__dbt_tmp" as
    
Select
	[CHARGEPAYMENTID] [ChargePaymentID],
	[AMOUNT] [Amount],
	[PAYMENTID] [PaymentID],
	[CREATED] [Created],
	[UPDATEEVENTID] [UpdateEventID],
	[CONSIGNMENTID] [ConsignmentID],
	[BIDDERID] [BidderID],
	[VENDORID] [VendorID],
	[MEDIAID] [MediaID],
	[SPONSORID] [SponsorID],
	[CHARGEID] [ChargeID],
	[REFUNDSTATE] [RefundState]
From stg.[Auct_ChargePayment_Raw]
