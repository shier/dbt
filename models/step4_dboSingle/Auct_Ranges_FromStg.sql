{{ config(materialized='table',schema='dbo')}}
Select
	cast([RangeID] as int) [RangeID],
	cast([RangeName] as nvarchar(4000)) [RangeName],
	cast([ContactTypeID] as int) [ContactTypeID],
	cast([AuctionID] as int) [AuctionID],
	cast([Created] as datetime) [Created],
	cast([UpdateEventID] as int) [UpdateEventID],
	cast([ProjectedTime] as datetime) [ProjectedTime],
	cast([IsReserveLotFee] as int) [IsReserveLotFee],
	cast([RangeStart] as numeric(30,2)) [RangeStart],
	cast([RangeEnd] as numeric(30,2)) [RangeEnd],
	cast([RangeNumber] as numeric(30,4)) [RangeNumber] 
From stg.[Auct_Ranges_FinalView]