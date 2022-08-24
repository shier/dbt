create view "dbo_stg"."Auct_BidIncrement_InterView__dbt_tmp" as
    
Select
	[BIDINCREMENTID] [BidIncrementID],
	[INCREMENTVALUE] [IncrementValue],
	[CREATED] [Created],
	[UPDATEEVENTID] [UpdateEventID]
From stg.[Auct_BidIncrement_Raw]
