
      
  
  if object_id ('"stg"."Auct_Photo_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_Photo_Incr_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_Photo_Incr"','U') is not null
    begin
    drop table "stg"."Auct_Photo_Incr"
    end


   EXEC('create view stg.Auct_Photo_Incr_temp_view as
    
With hashData as (
		Select
			HASHBYTES(''MD5'', concat(Cast(Created as varchar), Cast(ShowonWeb as varchar), Cast(IsMainAdvertising as varchar), Cast(Width as varchar), Cast(UpdateEventID as varchar), Cast(TbPhotoSize as varchar), Cast(TbHeight as varchar), Cast(TbWidth as varchar), Cast(WebSiteOrder as varchar), Cast(PhotoTypeID as varchar), Cast(PhotoStatusID as varchar), Cast(ItemID as varchar), Cast(PhotoSize as varchar), Cast(Height as varchar), FileName, UncPath, TbFileName, TbUncPath, FullPath, TbfullPath, WebFileName, WebUncPath, RejectionReason)) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_Photo_Inter]
	)
Select * From hashData

    ');

  CREATE TABLE "stg"."Auct_Photo_Incr"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_Photo_Incr_temp_view)

   
  
  if object_id ('"stg"."Auct_Photo_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_Photo_Incr_temp_view"
    end



  