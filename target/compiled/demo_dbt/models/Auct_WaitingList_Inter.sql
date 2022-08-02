
Select
	WAITINGLISTTYPEID WaitingListTypeID,
	WAITINGLISTID WaitingListID,
	AUCTIONID AuctionID,
	CUSTOMERACCOUNTID CustomerAccountID,
	WAITINGSTATEBIT WaitingStateBit,
	CREATED Created,
	cast(CREATEDBYUSERNAME as nvarchar(4000)) CreatedByUserName
From Auct_WaitingList_Raw