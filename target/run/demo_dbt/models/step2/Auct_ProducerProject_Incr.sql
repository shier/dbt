
      
  
  if object_id ('"stg"."Auct_ProducerProject_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_ProducerProject_Incr_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_ProducerProject_Incr"','U') is not null
    begin
    drop table "stg"."Auct_ProducerProject_Incr"
    end


   EXEC('create view stg.Auct_ProducerProject_Incr_temp_view as
    
With hashData as (
		Select
			HASHBYTES(''MD5'', concat(Name, Cast(DateCreated as varchar), Cast(Active as varchar))) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_ProducerProject_Inter]
	)
Select * From hashData

    ');

  CREATE TABLE "stg"."Auct_ProducerProject_Incr"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_ProducerProject_Incr_temp_view)

   
  
  if object_id ('"stg"."Auct_ProducerProject_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_ProducerProject_Incr_temp_view"
    end



  