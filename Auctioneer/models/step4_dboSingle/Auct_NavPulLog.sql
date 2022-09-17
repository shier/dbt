{{ config(materialized='table',schema='dbo')}}
Select
	cast([ID] as int) [ID],
	cast([ProcessDate] as nvarchar(4000)) [PROCESSDATE],
	cast([RecsProcessed] as int) [RECSPROCESSED],
	cast([Status] as int) [STATUS],
	cast([AuctionID] as int) [AUCTIONID],
	cast([Created] as datetime) [CREATED] 
From stg.[Auct_NavPulLog_FinalView]