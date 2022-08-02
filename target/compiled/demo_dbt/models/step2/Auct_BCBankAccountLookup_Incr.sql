
With hashData as (
		Select
			HASHBYTES('MD5', concat(Cast(BCBankAccountID as varchar), Cast(AuctionID as varchar), Cast(FeeCategoryID as varchar), Cast(PaymentMethodID as varchar), Cast(BCPaymentTypeID as varchar), Cast(ItemTypeID as varchar))) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_BCBankAccountLookup_Inter]
	)
Select * From hashData
