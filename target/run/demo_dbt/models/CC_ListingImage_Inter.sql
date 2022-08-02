
  
  if object_id ('"stg"."CC_ListingImage_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."CC_ListingImage_Inter__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."CC_ListingImage_Inter__dbt_tmp"','U') is not null
    begin
    drop table "stg"."CC_ListingImage_Inter__dbt_tmp"
    end


   EXEC('create view stg.CC_ListingImage_Inter__dbt_tmp_temp_view as
    
Select
	Id ID,
	ListingId ListingID,
	ListingImageTypeId ListingImageTypeID,
	Sequence Sequence,
	CreateDate CreateDate,
	ModifyDate ModifyDate,
	IsActive IsActive,
	Letterbox LetterBox,
	UseCompressedImages UseCompressedImages,
	SrcsetComputed SrcsetComputed,
	cast(HashOrig as nvarchar(4000)) Hashorig,
	cast(UrlOrig as nvarchar(4000)) URLorig,
	cast(UrlStandard as nvarchar(4000)) URLstandard,
	cast(UrlSrcsetRetinaMd as nvarchar(4000)) URLsrcsetretinamd,
	cast(UrlSrcsetRetinaLg as nvarchar(4000)) URLsrcsetretinalg,
	cast(UrlSrcsetRetinaXL as nvarchar(4000)) URLsrcsetretinaxl,
	cast(UrlSrcsetRetinaXXL as nvarchar(4000)) URLsrcsetretinaxxl,
	cast(ComputedSrcset as nvarchar(4000)) Computedsrcset,
	cast(UrlThumbnailWide as nvarchar(4000)) URLThuMbnailwIDE,
	cast(UrlSrcsetLg as nvarchar(4000)) URLsrcsetlg,
	cast(UrlSrcsetXL as nvarchar(4000)) URLsrcsetxl,
	cast(UrlSrcsetXXL as nvarchar(4000)) URLsrcsetxxl,
	cast(UrlSrcsetRetinaXXS as nvarchar(4000)) URLsrcsetretinaxxs,
	cast(UrlSrcsetRetinaXS as nvarchar(4000)) URLsrcsetretinaxs,
	cast(UrlSrcsetRetinaSm as nvarchar(4000)) URLsrcsetretinasm,
	cast(UrlThumbnailCompressed as nvarchar(4000)) URLThuMbnailCompressed,
	cast(UrlStandardCompressed as nvarchar(4000)) URLstandardCompressed,
	cast(UrlSrcsetXXS as nvarchar(4000)) URLsrcsetxxs,
	cast(UrlSrcsetXS as nvarchar(4000)) URLsrcsetxs,
	cast(UrlSrcsetSm as nvarchar(4000)) URLsrcsetsm,
	cast(UrlSrcsetMd as nvarchar(4000)) URLsrcsetmd,
	cast(UrlThumbnail as nvarchar(4000)) URLThuMbnail,
	cast(UrlJumbo as nvarchar(4000)) URLjumbo,
	cast(FullUrl as nvarchar(4000)) FullURL,
	cast(UrlCarousel as nvarchar(4000)) URLCarousel,
	cast(UrlCarouselCompressed as nvarchar(4000)) URLCarouselCompressed,
	cast(UrlJumboCompressed as nvarchar(4000)) URLjumboCompressed
From CC_ListingImage_Raw
    ');

  CREATE TABLE "stg"."CC_ListingImage_Inter__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.CC_ListingImage_Inter__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."CC_ListingImage_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."CC_ListingImage_Inter__dbt_tmp_temp_view"
    end


