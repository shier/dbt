
With hashData as (
		Select
			HASHBYTES('MD5', concat(Cast(UpdateEventID as varchar), Cast(Created as varchar), Cast(DealernumExpire as varchar), Cast(DeAlerTaxExpire as varchar), DealerNumber, DealerState, ReSaleNumber, TaxIDNumber, TaxIDsTage, DealerComment, EmployeeIDNumber)) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_Dealer_Inter]
	)
Select * From hashData
