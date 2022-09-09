{{ config(materialized='view',schema='stg')}}
Select
	[BIDINCREMENTID] [BidIncrementID],
	[INCREMENTVALUE] [IncrementValue],
	[CREATED] [Created],
	[UPDATEEVENTID] [UpdateEventID]
From stg.[Auct_BidIncrement_Raw]
