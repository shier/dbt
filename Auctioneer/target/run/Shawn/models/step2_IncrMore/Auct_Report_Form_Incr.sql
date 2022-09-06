
      
  
  if object_id ('"stg"."Auct_Report_Form_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_Report_Form_Incr_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_Report_Form_Incr"','U') is not null
    begin
    drop table "stg"."Auct_Report_Form_Incr"
    end


   EXEC('create view stg.Auct_Report_Form_Incr_temp_view as
    
With hashData as (
		Select
			HASHBYTES(''SHA2_256'', concat(Cast([ReportFormID] as varchar), Cast([ReportID] as varchar), Cast([FormID] as varchar), [EventID], Cast([PackageOrder] as varchar), Cast([AuctionID] as varchar), Cast([Active] as varchar))) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_Report_Form_InterView]
	)
Select * From hashData

    ');

  CREATE TABLE "stg"."Auct_Report_Form_Incr"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_Report_Form_Incr_temp_view)

   
  
  if object_id ('"stg"."Auct_Report_Form_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_Report_Form_Incr_temp_view"
    end



  