
      
  
  if object_id ('"stg"."Auct_ReportUser_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_ReportUser_Incr_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_ReportUser_Incr"','U') is not null
    begin
    drop table "stg"."Auct_ReportUser_Incr"
    end


   EXEC('create view stg.Auct_ReportUser_Incr_temp_view as
    
With hashData as (
		Select
			HASHBYTES(''SHA2_256'', concat(Cast([ReportID] as varchar), Cast([UserID] as varchar), [Title], [Category], [Description])) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_ReportUser_InterView]
	)
Select * From hashData

    ');

  CREATE TABLE "stg"."Auct_ReportUser_Incr"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_ReportUser_Incr_temp_view)

   
  
  if object_id ('"stg"."Auct_ReportUser_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_ReportUser_Incr_temp_view"
    end



  