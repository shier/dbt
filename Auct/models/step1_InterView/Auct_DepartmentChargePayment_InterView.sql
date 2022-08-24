{{ config(materialized='view',schema='stg')}}
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
