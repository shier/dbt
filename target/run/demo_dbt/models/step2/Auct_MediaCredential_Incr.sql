
      
  
  if object_id ('"stg"."Auct_MediaCredential_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_MediaCredential_Incr_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_MediaCredential_Incr"','U') is not null
    begin
    drop table "stg"."Auct_MediaCredential_Incr"
    end


   EXEC('create view stg.Auct_MediaCredential_Incr_temp_view as
    
With hashData as (
		Select
			HASHBYTES(''MD5'', concat(Cast(Created as varchar), Cast(MediaAuctionID as varchar), Cast(UpdateEventID as varchar), CredentialNumber)) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_MediaCredential_Inter]
	)
Select * From hashData

    ');

  CREATE TABLE "stg"."Auct_MediaCredential_Incr"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_MediaCredential_Incr_temp_view)

   
  
  if object_id ('"stg"."Auct_MediaCredential_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_MediaCredential_Incr_temp_view"
    end



  