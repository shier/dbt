{{ config(materialized='view',schema='stg')}}
Select
	[BCBankAccountLookupID],[BCBankAccountID],[AuctionID],[FeeCategoryID],[PaymentMethodID],[BCPaymentTypeID],[ItemTypeID] 
From stg.[Auct_BCBankAccountLookup_Incr] 
Where [dbt_valid_to] is null