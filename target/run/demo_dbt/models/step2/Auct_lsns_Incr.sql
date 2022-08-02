
      
  
  if object_id ('"stg"."Auct_lsns_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_lsns_Incr_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_lsns_Incr"','U') is not null
    begin
    drop table "stg"."Auct_lsns_Incr"
    end


   EXEC('create view stg.Auct_lsns_Incr_temp_view as
    
With hashData as (
		Select
			HASHBYTES(''MD5'', concat(Cast(Originator_lsn as varchar), Originator_Publication, Originator, Originator_Db, Cast(Originator_Publication_ID as varchar), Cast(Originator_Db_Version as varchar), Cast(Originator_Version as varchar), Cast(Originator_ID as varchar), Cast(Last_Updated as varchar))) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_lsns_Inter]
	)
Select * From hashData

    ');

  CREATE TABLE "stg"."Auct_lsns_Incr"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_lsns_Incr_temp_view)

   
  
  if object_id ('"stg"."Auct_lsns_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_lsns_Incr_temp_view"
    end



  