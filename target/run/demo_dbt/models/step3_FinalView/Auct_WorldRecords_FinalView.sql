create view "stg"."Auct_WorldRecords_FinalView__dbt_tmp" as
    
Select
	[Wrsp],[LotNumber],[Wrsh],[Wrsscm],[AuctionID],[Comments],[Created] 
From [Auct_WorldRecords_Incr]
