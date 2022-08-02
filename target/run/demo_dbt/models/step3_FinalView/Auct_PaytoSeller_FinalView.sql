create view "stg"."Auct_PaytoSeller_FinalView__dbt_tmp" as
    
Select
	[PaytoSellerID],[AccountingID],[SellerName],[LotsPurchased],[VerifiedByUserID],[VerfiedByUserName],[PaymentTypeName],[CompanyName],[Address],[Notes],[LotNumber],[Hammer],[SellerCommission],[SellerCommissionPercent],[FeeTotal],[PaidFromescrow],[TotalowedtoSeller],[AmountPaidtoSeller],[TitleReceived] 
From stg.[Auct_PaytoSeller_Incr] 
Where [dbt_valid_to] is null
