{{ config(materialized='table',schema='dbo')}}
Select
	cast([BidIncrementID] as int) [BidIncrementID],
	cast([IncrementValue] as numeric(19,4)) [IncrementValue],
	cast([Created] as DATETIME) [Created],
	cast([UpdateEventID] as int) [UpdateEventID] 
From stg.[Auct_BidIncrement_FinalView]