
With hashData as (
		Select
			HASHBYTES('MD5', concat(AuctionBusinessUnit, GLInfoName, Cast(TaxTypeID as varchar))) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_GLInfoTax_Inter]
	)
Select * From hashData
