
With hashData as (
		Select
			HASHBYTES('MD5', concat(Cast(BlockSaleID as varchar), Cast(UpdateEventID as varchar), Cast(AmountAdjusted as varchar), Cast(Created as varchar))) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_CarCredit_Inter]
	)
Select * From hashData
