
      
  
  if object_id ('"stg"."Auct_WorldRecords2_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_WorldRecords2_Incr_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_WorldRecords2_Incr"','U') is not null
    begin
    drop table "stg"."Auct_WorldRecords2_Incr"
    end


   EXEC('create view stg.Auct_WorldRecords2_Incr_temp_view as
    
With hashData as (
		Select
			HASHBYTES(''SHA2_256'', concat(Cast([AuctionID] as varchar), Cast([WorldRecordSales$Hagerty] as varchar), Cast([WorldRecordSales$sPortsCarmarket] as varchar), Cast([WorldRecordSalesPrice] as varchar), Cast([Lot#] as varchar), [Comments], Cast([WorldRecordID] as varchar))) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_WorldRecords2_Inter]
	)
Select * From hashData

    ');

  CREATE TABLE "stg"."Auct_WorldRecords2_Incr"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_WorldRecords2_Incr_temp_view)

   
  
  if object_id ('"stg"."Auct_WorldRecords2_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_WorldRecords2_Incr_temp_view"
    end



  