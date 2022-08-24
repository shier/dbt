create view "dbo_stg"."Auct_BCBankAccountLookup_InterView__dbt_tmp" as
    
Select
	[BCBANKACCOUNTLOOKUPID] [BCBankAccountLookupID],
	[BCBANKACCOUNTID] [BCBankAccountID],
	[AUCTIONID] [AuctionID],
	[FEECATEGORYID] [FeeCategoryID],
	[PAYMENTMETHODID] [PaymentMethodID],
	[BCPAYMENTTYPEID] [BCPaymentTypeID],
	[ITEMTYPEID] [ItemTypeID]
From stg.[Auct_BCBankAccountLookup_Raw]
