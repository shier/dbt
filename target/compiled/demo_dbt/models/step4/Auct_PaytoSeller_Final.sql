
Select
	[PaytoSellerID],[TitleReceived],[SellerCommission],[SellerCommissionPercent],[FeeTotal],[PaidFromescrow],[TotalowedtoSeller],[AmountPaidtoSeller],[LotNumber],[Hammer],[VerifiedByUserID],[SellerName],[LotsPurchased],[VerfiedByUserName],[PaymentTypeName],[CompanyName],[Address],[AccountingID],[Notes] 
From stg.[Auct_PaytoSeller_Incr] 
Where [dbt_valid_to] is null