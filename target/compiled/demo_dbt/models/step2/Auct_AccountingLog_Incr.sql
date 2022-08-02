
With hashData as (
		Select
			HASHBYTES('MD5', concat(Cast(AuctionID as varchar), Cast(ConsignmentID as varchar), Cast(AuctionBidderID as varchar), Cast(BlockSaleID as varchar), Cast(ChangedStamp as varchar), ChangedByUserName, FieldName, Oldvalue, Newvalue)) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_AccountingLog_Inter]
	)
Select * From hashData
