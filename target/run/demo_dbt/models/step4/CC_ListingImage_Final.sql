
  
  if object_id ('"stg"."CC_ListingImage_Final__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."CC_ListingImage_Final__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."CC_ListingImage_Final__dbt_tmp"','U') is not null
    begin
    drop table "stg"."CC_ListingImage_Final__dbt_tmp"
    end


   EXEC('create view stg.CC_ListingImage_Final__dbt_tmp_temp_view as
    
Select
	[ID],[ListingID],[ListingImageTypeID],[Sequence],[CreateDate],[ModifyDate],[IsActive],[LetterBox],[UseCompressedImages],[SrcsetComputed],[Hashorig],[URLorig],[URLstandard],[URLsrcsetretinamd],[URLsrcsetretinalg],[URLsrcsetretinaxl],[URLsrcsetretinaxxl],[Computedsrcset],[URLThuMbnailwIDE],[URLsrcsetlg],[URLsrcsetxl],[URLsrcsetxxl],[URLsrcsetretinaxxs],[URLsrcsetretinaxs],[URLsrcsetretinasm],[URLThuMbnailCompressed],[URLstandardCompressed],[URLsrcsetxxs],[URLsrcsetxs],[URLsrcsetsm],[URLsrcsetmd],[URLThuMbnail],[URLjumbo],[FullURL],[URLCarousel],[URLCarouselCompressed],[URLjumboCompressed] 
From stg.[CC_ListingImage_Incr] 
Where [dbt_valid_to] is null
    ');

  CREATE TABLE "stg"."CC_ListingImage_Final__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.CC_ListingImage_Final__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."CC_ListingImage_Final__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."CC_ListingImage_Final__dbt_tmp_temp_view"
    end


