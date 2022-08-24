
With hashData as (
		Select
			HASHBYTES('SHA2_256', concat(Cast([ChargeID] as varchar), Cast([FeeTypeID] as varchar), Cast([Created] as varchar), Cast([UpdateEventID] as varchar), Cast([InvoiceID] as varchar), [Comments], [IsTaxable], Cast([ConsignmentID] as varchar), Cast([BidderID] as varchar), Cast([DealerID] as varchar), Cast([VendorID] as varchar), Cast([MediaID] as varchar), Cast([SponsorID] as varchar), Cast([UserID] as varchar), Cast([Amount] as varchar))) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_ChargeDeleted_InterView]
	)
Select * From hashData

	where not exists 
	(
		select hashValue 
		from "BJAC_DW_PROD"."stg"."Auct_ChargeDeleted_Incr" compareData
		where hashData.hashValue=compareData.hashValue
	)
