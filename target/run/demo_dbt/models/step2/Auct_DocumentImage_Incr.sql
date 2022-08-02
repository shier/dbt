
      
  
  if object_id ('"stg"."Auct_DocumentImage_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_DocumentImage_Incr_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_DocumentImage_Incr"','U') is not null
    begin
    drop table "stg"."Auct_DocumentImage_Incr"
    end


   EXEC('create view stg.Auct_DocumentImage_Incr_temp_view as
    
With hashData as (
		Select
			HASHBYTES(''MD5'', concat(UncPath, FullPath, Cast(Expiration as varchar), Cast(Created as varchar), Cast(Active as varchar), Cast(CustomerAccountID as varchar), Cast(DocumentImageTypeID as varchar), Cast(AuctionID as varchar), Cast(CreatedByUserID as varchar), Cast(Height as varchar), Cast(Width as varchar))) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_DocumentImage_Inter]
	)
Select * From hashData

    ');

  CREATE TABLE "stg"."Auct_DocumentImage_Incr"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_DocumentImage_Incr_temp_view)

   
  
  if object_id ('"stg"."Auct_DocumentImage_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_DocumentImage_Incr_temp_view"
    end



  