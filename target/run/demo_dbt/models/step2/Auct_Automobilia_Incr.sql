
      
  
  if object_id ('"stg"."Auct_Automobilia_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_Automobilia_Incr_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_Automobilia_Incr"','U') is not null
    begin
    drop table "stg"."Auct_Automobilia_Incr"
    end


   EXEC('create view stg.Auct_Automobilia_Incr_temp_view as
    
With hashData as (
		Select
			HASHBYTES(''MD5'', concat(Cast(Created as varchar), Cast(ItemID as varchar), Cast(UpdateEventID as varchar), Cast(CustomerAccountID as varchar), Cast(AuctionID as varchar), Cast(AutomobiliaTypeID as varchar), Cast(AutomobiliaConditionID as varchar), Description, Comments, Cast(LotNumber as varchar))) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_Automobilia_Inter]
	)
Select * From hashData

    ');

  CREATE TABLE "stg"."Auct_Automobilia_Incr"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_Automobilia_Incr_temp_view)

   
  
  if object_id ('"stg"."Auct_Automobilia_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_Automobilia_Incr_temp_view"
    end



  