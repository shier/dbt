{{ config(materialized='table',schema='dbo')}}
Select
	cast([RangeID] as int) [RANGEID],
	cast([RangeName] as nvarchar(4000)) [RANGENAME],
	cast([ContactTypeID] as int) [CONTACTTYPEID],
	cast([AuctionID] as int) [AUCTIONID],
	cast([Created] as datetime) [CREATED],
	cast([UpdateEventID] as int) [UPDATEEVENTID],
	cast([ProjectedTime] as datetime) [PROJECTEDTIME],
	cast([IsReserveLotFee] as int) [ISRESERVELOTFEE],
	cast([RangeStart] as numeric(30,2)) [RANGESTART],
	cast([RangeEnd] as numeric(30,2)) [RANGEEND],
	cast([RangeNumber] as numeric(30,4)) [RANGENUMBER] 
From stg.[Auct_Ranges_FinalView]