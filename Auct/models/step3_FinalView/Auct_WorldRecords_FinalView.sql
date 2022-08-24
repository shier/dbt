{{ config(materialized='view',schema='stg')}}
Select
	[Wrsp],[LotNumber],[Wrsh],[Wrsscm],[AuctionID],[Comments],[Created] 
From [Auct_WorldRecords_Incr]