{{ config(materialized='view',schema='stg')}}
Select
	[WaitingListID],[AuctionID],[CustomerAccountID],[WaitingStateBit],[WaitingListTypeID],[CreatedByUserName],[Created] 
From stg.[Auct_WaitingList_Incr] 
Where [dbt_valid_to] is null