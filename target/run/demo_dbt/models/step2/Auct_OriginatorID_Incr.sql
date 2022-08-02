
      
  
  if object_id ('"stg"."Auct_OriginatorID_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_OriginatorID_Incr_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_OriginatorID_Incr"','U') is not null
    begin
    drop table "stg"."Auct_OriginatorID_Incr"
    end


   EXEC('create view stg.Auct_OriginatorID_Incr_temp_view as
    
With hashData as (
		Select
			HASHBYTES(''MD5'', concat(Originator_Db, Cast(Inserted_Date as varchar), Cast(Originator_Db_Version as varchar), Cast(Originator_Version as varchar), Originator_Publication, Originator_Node)) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_OriginatorID_Inter]
	)
Select * From hashData

    ');

  CREATE TABLE "stg"."Auct_OriginatorID_Incr"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_OriginatorID_Incr_temp_view)

   
  
  if object_id ('"stg"."Auct_OriginatorID_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_OriginatorID_Incr_temp_view"
    end



  