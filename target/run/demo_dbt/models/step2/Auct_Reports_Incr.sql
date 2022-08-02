
      
  
  if object_id ('"stg"."Auct_Reports_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_Reports_Incr_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_Reports_Incr"','U') is not null
    begin
    drop table "stg"."Auct_Reports_Incr"
    end


   EXEC('create view stg.Auct_Reports_Incr_temp_view as
    
With hashData as (
		Select
			HASHBYTES(''MD5'', concat(Cast(IsexcelExport as varchar), Cast(IsSorTable as varchar), Value3Title, Value3Example, DateFromTitle, DateFromExample, DatetoTitle, DatetoExample, DateFromind, Datetoind, Value1Title, Value1Example, Value2Title, Value2Example, Accountind, Auctiondayind, Paymentind, Value1ind, Value2ind, Value3ind, Description, Value4ind, Value4Title, Value4Example, ReportsCategory, ReportsTitle, ReportsFileName, Auctionind)) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_Reports_Inter]
	)
Select * From hashData

    ');

  CREATE TABLE "stg"."Auct_Reports_Incr"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_Reports_Incr_temp_view)

   
  
  if object_id ('"stg"."Auct_Reports_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_Reports_Incr_temp_view"
    end



  