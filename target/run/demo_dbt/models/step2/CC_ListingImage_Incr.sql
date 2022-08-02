
      
  
  if object_id ('"stg"."CC_ListingImage_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."CC_ListingImage_Incr_temp_view"
    end


   
    
  if object_id ('"stg"."CC_ListingImage_Incr"','U') is not null
    begin
    drop table "stg"."CC_ListingImage_Incr"
    end


   EXEC('create view stg.CC_ListingImage_Incr_temp_view as
    
With hashData as (
		Select
			HASHBYTES(''MD5'', concat(Cast(ListingID as varchar), Cast(ListingImageTypeID as varchar), Cast(Sequence as varchar), Cast(CreateDate as varchar), Cast(ModifyDate as varchar), Cast(IsActive as varchar), Cast(LetterBox as varchar), Cast(UseCompressedImages as varchar), Cast(SrcsetComputed as varchar), Hashorig, URLorig, URLstandard, URLsrcsetretinamd, URLsrcsetretinalg, URLsrcsetretinaxl, URLsrcsetretinaxxl, Computedsrcset, URLThuMbnailwIDE, URLsrcsetlg, URLsrcsetxl, URLsrcsetxxl, URLsrcsetretinaxxs, URLsrcsetretinaxs, URLsrcsetretinasm, URLThuMbnailCompressed, URLstandardCompressed, URLsrcsetxxs, URLsrcsetxs, URLsrcsetsm, URLsrcsetmd, URLThuMbnail, URLjumbo, FullURL, URLCarousel, URLCarouselCompressed, URLjumboCompressed)) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[CC_ListingImage_Inter]
	)
Select * From hashData

    ');

  CREATE TABLE "stg"."CC_ListingImage_Incr"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.CC_ListingImage_Incr_temp_view)

   
  
  if object_id ('"stg"."CC_ListingImage_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."CC_ListingImage_Incr_temp_view"
    end



  