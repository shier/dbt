
Select
	[WaitingListID],[WaitingListTypeID],[AuctionID],[CustomerAccountID],[WaitingStateBit],[Created],[CreatedByUserName] 
From stg.[Auct_WaitingList_Incr] 
Where [dbt_valid_to] is null