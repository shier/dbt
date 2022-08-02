{{ config(materialized='table',schema='dbo')}}
Select
	cast([Wrsp] as numeric(18,2)) [Wrsp],
	cast([LotNumber] as numeric(18,2)) [LotNumber],
	cast([Wrsh] as numeric(18,2)) [Wrsh],
	cast([Wrsscm] as numeric(18,2)) [Wrsscm],
	cast([AuctionID] as int) [AuctionID],
	cast([Comments] as nvarchar(4000)) [Comments],
	cast([Created] as datetime) [Created] 
From stg.[Auct_WorldRecords_FinalView]