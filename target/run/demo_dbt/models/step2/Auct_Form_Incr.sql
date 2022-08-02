
      
  
  if object_id ('"stg"."Auct_Form_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_Form_Incr_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_Form_Incr"','U') is not null
    begin
    drop table "stg"."Auct_Form_Incr"
    end


   EXEC('create view stg.Auct_Form_Incr_temp_view as
    
With hashData as (
		Select
			HASHBYTES(''MD5'', concat(EventID, Cast(Active as varchar), Cast(ReportFormID as varchar), Cast(ReportID as varchar), Cast(PackageOrder as varchar), Cast(AuctionID as varchar))) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_Form_Inter]
	)
Select * From hashData

    ');

  CREATE TABLE "stg"."Auct_Form_Incr"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_Form_Incr_temp_view)

   
  
  if object_id ('"stg"."Auct_Form_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_Form_Incr_temp_view"
    end



  