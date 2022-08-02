
      
  
  if object_id ('"stg"."Auct_Organization_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_Organization_Incr_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_Organization_Incr"','U') is not null
    begin
    drop table "stg"."Auct_Organization_Incr"
    end


   EXEC('create view stg.Auct_Organization_Incr_temp_view as
    
With hashData as (
		Select
			HASHBYTES(''MD5'', concat(Cast(Created as varchar), Cast(CompanyID as varchar), Cast(UpdateEventID as varchar), Name, DeptCode)) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_Organization_Inter]
	)
Select * From hashData

    ');

  CREATE TABLE "stg"."Auct_Organization_Incr"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_Organization_Incr_temp_view)

   
  
  if object_id ('"stg"."Auct_Organization_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_Organization_Incr_temp_view"
    end



  