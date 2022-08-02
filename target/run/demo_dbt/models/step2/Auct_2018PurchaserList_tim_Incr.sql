
      
  
  if object_id ('"stg"."Auct_2018PurchaserList_tim_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_2018PurchaserList_tim_Incr_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_2018PurchaserList_tim_Incr"','U') is not null
    begin
    drop table "stg"."Auct_2018PurchaserList_tim_Incr"
    end


   EXEC('create view stg.Auct_2018PurchaserList_tim_Incr_temp_view as
    
With hashData as (
		Select
			HASHBYTES(''SHA2_256'', concat([First_Name], [Last_Name], [Email], [Phone], [Address], [Address2], [City], [State], [ZipCode], [Country], [Optin], [AuctionID], [Source])) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_2018PurchaserList_tim_Inter]
	)
Select * From hashData

    ');

  CREATE TABLE "stg"."Auct_2018PurchaserList_tim_Incr"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_2018PurchaserList_tim_Incr_temp_view)

   
  
  if object_id ('"stg"."Auct_2018PurchaserList_tim_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_2018PurchaserList_tim_Incr_temp_view"
    end



  