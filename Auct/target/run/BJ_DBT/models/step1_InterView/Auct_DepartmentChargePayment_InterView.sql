create view "dbo_stg"."Auct_DepartmentChargePayment_InterView__dbt_tmp" as
    
Select
	[DEPARTMENTCHARGEPAYMENTID] [DepartmentChargePaymentID],
	[AMOUNT] [Amount],
	[PAYMENTID] [PaymentID],
	[CHARGEID] [ChargeID],
	[VENDORAUCTIONID] [VendorAuctionID],
	[CREATED] [Created],
	[UPDATEEVENTID] [UpdateEventID],
	[SPONSORAUCTIONID] [SponsorAuctionID]
From stg.[Auct_DepartmentChargePayment_Raw]
