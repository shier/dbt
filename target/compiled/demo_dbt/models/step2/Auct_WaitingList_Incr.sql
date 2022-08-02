
With hashData as (
		Select
			HASHBYTES('MD5', concat(Cast(WaitingListTypeID as varchar), Cast(AuctionID as varchar), Cast(CustomerAccountID as varchar), Cast(WaitingStateBit as varchar), Cast(Created as varchar), CreatedByUserName)) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_WaitingList_Inter]
	)
Select * From hashData
