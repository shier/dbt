
      
  
  if object_id ('"stg"."Auct_BidderImportFromAdobe_temp_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_BidderImportFromAdobe_temp_Incr_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_BidderImportFromAdobe_temp_Incr"','U') is not null
    begin
    drop table "stg"."Auct_BidderImportFromAdobe_temp_Incr"
    end


   EXEC('create view stg.Auct_BidderImportFromAdobe_temp_Incr_temp_view as
    
With hashData as (
		Select
			HASHBYTES(''SHA2_256'', concat(Cast([Created_Date] as varchar), [Agreement_Status], [Recipient_1_Name], [Recipient_1_Email], [Recipient_1_Role])) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_BidderImportFromAdobe_temp_Inter]
	)
Select * From hashData

    ');

  CREATE TABLE "stg"."Auct_BidderImportFromAdobe_temp_Incr"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_BidderImportFromAdobe_temp_Incr_temp_view)

   
  
  if object_id ('"stg"."Auct_BidderImportFromAdobe_temp_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_BidderImportFromAdobe_temp_Incr_temp_view"
    end



  