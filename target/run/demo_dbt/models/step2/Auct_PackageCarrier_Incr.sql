
      
  
  if object_id ('"stg"."Auct_PackageCarrier_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_PackageCarrier_Incr_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_PackageCarrier_Incr"','U') is not null
    begin
    drop table "stg"."Auct_PackageCarrier_Incr"
    end


   EXEC('create view stg.Auct_PackageCarrier_Incr_temp_view as
    
With hashData as (
		Select
			HASHBYTES(''MD5'', concat(Cast(Active as varchar), Name, TrackingURL)) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_PackageCarrier_Inter]
	)
Select * From hashData

    ');

  CREATE TABLE "stg"."Auct_PackageCarrier_Incr"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_PackageCarrier_Incr_temp_view)

   
  
  if object_id ('"stg"."Auct_PackageCarrier_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_PackageCarrier_Incr_temp_view"
    end



  