
Select
	cast([IncrementValue] as numeric(19,4)) [INCREMENTVALUE],
	cast([BidIncrementID] as int) [BIDINCREMENTID],
	cast([Created] as DATETIME) [CREATED],
	cast([UpdateEventID] as int) [UPDATEEVENTID] 
From stg.[Auct_BidIncrement_FinalView]