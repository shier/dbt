{{ config(materialized='view',schema='stg')}}
Select
	[PaytoSellerID],[AccountingID],[SellerName],[LotsPurchased],[VerifiedByUserID],[VerfiedByUserName],[PaymentTypeName],[CompanyName],[Address],[Notes],[LotNumber],[Hammer],[SellerCommission],[SellerCommissionPercent],[FeeTotal],[PaidFromescrow],[TotalowedtoSeller],[AmountPaidtoSeller],[TitleReceived] 
From stg.[Auct_PaytoSeller_Incr] 
Where [dbt_valid_to] is null