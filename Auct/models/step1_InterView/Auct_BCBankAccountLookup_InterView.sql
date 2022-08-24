{{ config(materialized='view',schema='stg')}}
Select
	[BCBANKACCOUNTLOOKUPID] [BCBankAccountLookupID],
	[BCBANKACCOUNTID] [BCBankAccountID],
	[AUCTIONID] [AuctionID],
	[FEECATEGORYID] [FeeCategoryID],
	[PAYMENTMETHODID] [PaymentMethodID],
	[BCPAYMENTTYPEID] [BCPaymentTypeID],
	[ITEMTYPEID] [ItemTypeID]
From stg.[Auct_BCBankAccountLookup_Raw]
