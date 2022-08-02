{{ config(materialized='table',schema='dbo')}}
Select
	cast([BlockBidID] as int) [BlockBidID],
	cast([AskingBID] as numeric(19,4)) [AskingBid],
	cast([HighBID] as numeric(19,4)) [HighBid],
	cast([DocketID] as int) [DocketID],
	cast([Created] as DATETIME) [Created],
	cast([UpdateEventID] as int) [UpdateEventID],
	cast([StartTime] as DATETIME) [StartTime],
	cast([EndTime] as DATETIME) [EndTime] 
From stg.[Auct_BlockBID_FinalView]