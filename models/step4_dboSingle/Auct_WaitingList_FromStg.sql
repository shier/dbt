{{ config(materialized='table',schema='dbo')}}
Select
	cast([WaitingListID] as int) [WaitingListID],
	cast([AuctionID] as int) [AuctionID],
	cast([CustomerAccountID] as int) [CustomerAccountID],
	cast([WaitingStateBit] as int) [WaitingStateBit],
	cast([WaitingListTypeID] as int) [WaitingListTypeID],
	cast([CreatedByUserName] as nvarchar(4000)) [CreatedByUserName],
	cast([Created] as datetime) [Created] 
From stg.[Auct_WaitingList_FinalView]