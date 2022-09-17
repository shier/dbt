{{ config(materialized='table',schema='dbo')}}
Select
	cast([AskingBID] as numeric(19,4)) [ASKINGBID],
	cast([HighBID] as numeric(19,4)) [HIGHBID],
	cast([BlockBidID] as int) [BLOCKBIDID],
	cast([DocketID] as int) [DOCKETID],
	cast([Created] as DATETIME) [CREATED],
	cast([UpdateEventID] as int) [UPDATEEVENTID],
	cast([StartTime] as DATETIME) [STARTTIME],
	cast([EndTime] as DATETIME) [ENDTIME] 
From stg.[Auct_BlockBID_FinalView]