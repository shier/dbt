
With hashData as (
		Select
			HASHBYTES('SHA2_256', concat([NexusState], [PurchaseState], [ClassName], Cast([ItemTaxTypeID] as varchar), [TaxruleDescription], Cast([AuctionTypeBit] as varchar))) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_TaxProcessor_Inter]
	)
Select * From hashData
