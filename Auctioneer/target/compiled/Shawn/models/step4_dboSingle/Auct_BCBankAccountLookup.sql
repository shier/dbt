
Select
	cast([BCBankAccountLookupID] as int) [BCBANKACCOUNTLOOKUPID],
	cast([BCBankAccountID] as int) [BCBANKACCOUNTID],
	cast([AuctionID] as int) [AUCTIONID],
	cast([FeeCategoryID] as int) [FEECATEGORYID],
	cast([PaymentMethodID] as int) [PAYMENTMETHODID],
	cast([BCPaymentTypeID] as int) [BCPAYMENTTYPEID],
	cast([ItemTypeID] as int) [ITEMTYPEID] 
From stg.[Auct_BCBankAccountLookup_FinalView]