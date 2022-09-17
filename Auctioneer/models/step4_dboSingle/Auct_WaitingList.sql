{{ config(materialized='table',schema='dbo')}}
Select
	cast([AuctionID] as int) [AUCTIONID],
	cast([CustomerAccountID] as int) [CUSTOMERACCOUNTID],
	cast([WaitingStateBit] as int) [WAITINGSTATEBIT],
	cast([WaitingListTypeID] as int) [WAITINGLISTTYPEID],
	cast([CreatedByUserName] as nvarchar(4000)) [CREATEDBYUSERNAME],
	cast([Created] as datetime) [CREATED],
	cast([WaitingListID] as int) [WAITINGLISTID] 
From stg.[Auct_WaitingList_FinalView]