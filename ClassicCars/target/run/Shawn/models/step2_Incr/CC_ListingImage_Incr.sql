
      
  
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
			HASHBYTES(''SHA2_256'', concat([Hashorig], [Computedsrcset], [URLThuMbnailwIDE], [URLsrcsetretinaxs], [URLsrcsetretinasm], [URLsrcsetretinamd], [URLsrcsetretinalg], [URLsrcsetretinaxl], [URLsrcsetretinaxxl], [URLsrcsetsm], [URLsrcsetmd], [URLsrcsetlg], [URLsrcsetxl], [URLsrcsetxxl], [URLsrcsetretinaxxs], [URLCarouselCompressed], [URLjumboCompressed], [URLThuMbnailCompressed], [URLstandardCompressed], [URLsrcsetxxs], [URLsrcsetxs], [URLorig], [URLstandard], [URLThuMbnail], [URLjumbo], [FullURL], [URLCarousel], Cast([ID] as varchar), Cast([ListingID] as varchar), Cast([ListingImageTypeID] as varchar), Cast([Sequence] as varchar), Cast([CreateDate] as varchar), Cast([ModifyDate] as varchar), Cast([IsActive] as varchar), Cast([LetterBox] as varchar), Cast([UseCompressedImages] as varchar), Cast([SrcsetComputed] as varchar))) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[CC_ListingImage_InterView]
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



  