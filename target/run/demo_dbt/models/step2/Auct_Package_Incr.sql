
      
  
  if object_id ('"stg"."Auct_Package_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_Package_Incr_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_Package_Incr"','U') is not null
    begin
    drop table "stg"."Auct_Package_Incr"
    end


   EXEC('create view stg.Auct_Package_Incr_temp_view as
    
With hashData as (
		Select
			HASHBYTES(''MD5'', concat(PackageTypeName, TrackingNumber, Note, Cast(PackageTypeID as varchar), Cast(CustomerAccountID as varchar), Cast(AuctionID as varchar), Cast(PackageCarrierID as varchar), Cast(DateCreated as varchar))) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_Package_Inter]
	)
Select * From hashData

    ');

  CREATE TABLE "stg"."Auct_Package_Incr"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_Package_Incr_temp_view)

   
  
  if object_id ('"stg"."Auct_Package_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_Package_Incr_temp_view"
    end



  