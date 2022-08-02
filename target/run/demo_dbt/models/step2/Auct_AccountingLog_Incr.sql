
      
  
  if object_id ('"stg"."Auct_AccountingLog_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_AccountingLog_Incr_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_AccountingLog_Incr"','U') is not null
    begin
    drop table "stg"."Auct_AccountingLog_Incr"
    end


   EXEC('create view stg.Auct_AccountingLog_Incr_temp_view as
    
With hashData as (
		Select
			HASHBYTES(''MD5'', concat(Cast(AuctionID as varchar), Cast(ConsignmentID as varchar), Cast(AuctionBidderID as varchar), Cast(BlockSaleID as varchar), Cast(ChangedStamp as varchar), ChangedByUserName, FieldName, Oldvalue, Newvalue)) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_AccountingLog_Inter]
	)
Select * From hashData

    ');

  CREATE TABLE "stg"."Auct_AccountingLog_Incr"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_AccountingLog_Incr_temp_view)

   
  
  if object_id ('"stg"."Auct_AccountingLog_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_AccountingLog_Incr_temp_view"
    end



  