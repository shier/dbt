
With hashData as (
		Select
			HASHBYTES('MD5', concat(Cvv, Cast(CreditCardID as varchar))) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[AH_CreditCardsExtraInFormation_Inter]
	)
Select * From hashData
