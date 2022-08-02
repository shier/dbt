{{ config(materialized='table',schema='dbo')}}
Select
	cast([ID] as int) [ID],
	cast([ProcessDate] as nvarchar(4000)) [ProcessDate],
	cast([RecsProcessed] as int) [RecsProcessed],
	cast([Status] as int) [Status],
	cast([AuctionID] as int) [AuctionID],
	cast([Created] as datetime) [Created] 
From stg.[Auct_NavPulLog_FinalView]