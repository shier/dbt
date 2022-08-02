{{ config(materialized='table',schema='dbo')}}
Select
	cast([BCBankAccountLookupID] as int) [BCBankAccountLookupID],
	cast([BCBankAccountID] as int) [BCBankAccountID],
	cast([AuctionID] as int) [AuctionID],
	cast([FeeCategoryID] as int) [FeeCategoryID],
	cast([PaymentMethodID] as int) [PaymentMethodID],
	cast([BCPaymentTypeID] as int) [BCPaymentTypeID],
	cast([ItemTypeID] as int) [ItemTypeID] 
From stg.[Auct_BCBankAccountLookup_FinalView]