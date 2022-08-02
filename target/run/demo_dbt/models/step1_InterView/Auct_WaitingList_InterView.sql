create view "stg"."Auct_WaitingList_InterView__dbt_tmp" as
    
Select
	[WAITINGLISTID] [WaitingListID],
	[AUCTIONID] [AuctionID],
	[CUSTOMERACCOUNTID] [CustomerAccountID],
	[WAITINGSTATEBIT] [WaitingStateBit],
	[WAITINGLISTTYPEID] [WaitingListTypeID],
	cast([CREATEDBYUSERNAME] as nvarchar(4000)) [CreatedByUserName],
	[CREATED] [Created]
From stg.[Auct_WaitingList_Raw]
