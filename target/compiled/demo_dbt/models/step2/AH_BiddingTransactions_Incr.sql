
With hashData as (
		Select
			HASHBYTES('MD5', concat(Cast(Active as varchar), Cast(Maxmindscore as varchar), Cast(Amount as varchar), TransactionID, Cast(ListingActionID as varchar), Cast(CreditCardID as varchar))) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[AH_BiddingTransactions_Inter]
	)
Select * From hashData
