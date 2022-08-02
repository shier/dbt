
With hashData as (
		Select
			HASHBYTES('MD5', concat(Cast(TitleReceived as varchar), Cast(SellerCommission as varchar), Cast(SellerCommissionPercent as varchar), Cast(FeeTotal as varchar), Cast(PaidFromescrow as varchar), Cast(TotalowedtoSeller as varchar), Cast(AmountPaidtoSeller as varchar), Cast(LotNumber as varchar), Cast(Hammer as varchar), Cast(VerifiedByUserID as varchar), SellerName, LotsPurchased, VerfiedByUserName, PaymentTypeName, CompanyName, Address, AccountingID, Notes)) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_PaytoSeller_Inter]
	)
Select * From hashData
