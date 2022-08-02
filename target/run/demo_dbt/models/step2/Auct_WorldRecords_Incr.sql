
      
  
  if object_id ('"stg"."Auct_WorldRecords_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_WorldRecords_Incr_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_WorldRecords_Incr"','U') is not null
    begin
    drop table "stg"."Auct_WorldRecords_Incr"
    end


   EXEC('create view stg.Auct_WorldRecords_Incr_temp_view as
    
With hashData as (
		Select
			HASHBYTES(''SHA2_256'', concat(Cast([Wrsp] as varchar), Cast([LotNumber] as varchar), Cast([Wrsh] as varchar), Cast([Wrsscm] as varchar), Cast([AuctionID] as varchar), [Comments], Cast([Created] as varchar))) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_WorldRecords_Inter]
	)
Select * From hashData

    ');

  CREATE TABLE "stg"."Auct_WorldRecords_Incr"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_WorldRecords_Incr_temp_view)

   
  
  if object_id ('"stg"."Auct_WorldRecords_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_WorldRecords_Incr_temp_view"
    end



  