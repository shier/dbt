
  
  if object_id ('"dbo"."CC_ListingImage__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."CC_ListingImage__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."CC_ListingImage__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."CC_ListingImage__dbt_tmp"
    end


   EXEC('create view dbo.CC_ListingImage__dbt_tmp_temp_view as
    
Select
	cast([Hashorig] as nvarchar(4000)) [HashOrig],
	cast([Computedsrcset] as nvarchar(4000)) [ComputedSrcset],
	cast([URLThuMbnailwIDE] as nvarchar(4000)) [UrlThumbnailWide],
	cast([URLsrcsetretinaxs] as nvarchar(4000)) [UrlSrcsetRetinaXS],
	cast([URLsrcsetretinasm] as nvarchar(4000)) [UrlSrcsetRetinaSm],
	cast([URLsrcsetretinamd] as nvarchar(4000)) [UrlSrcsetRetinaMd],
	cast([URLsrcsetretinalg] as nvarchar(4000)) [UrlSrcsetRetinaLg],
	cast([URLsrcsetretinaxl] as nvarchar(4000)) [UrlSrcsetRetinaXL],
	cast([URLsrcsetretinaxxl] as nvarchar(4000)) [UrlSrcsetRetinaXXL],
	cast([URLsrcsetsm] as nvarchar(4000)) [UrlSrcsetSm],
	cast([URLsrcsetmd] as nvarchar(4000)) [UrlSrcsetMd],
	cast([URLsrcsetlg] as nvarchar(4000)) [UrlSrcsetLg],
	cast([URLsrcsetxl] as nvarchar(4000)) [UrlSrcsetXL],
	cast([URLsrcsetxxl] as nvarchar(4000)) [UrlSrcsetXXL],
	cast([URLsrcsetretinaxxs] as nvarchar(4000)) [UrlSrcsetRetinaXXS],
	cast([URLCarouselCompressed] as nvarchar(4000)) [UrlCarouselCompressed],
	cast([URLjumboCompressed] as nvarchar(4000)) [UrlJumboCompressed],
	cast([URLThuMbnailCompressed] as nvarchar(4000)) [UrlThumbnailCompressed],
	cast([URLstandardCompressed] as nvarchar(4000)) [UrlStandardCompressed],
	cast([URLsrcsetxxs] as nvarchar(4000)) [UrlSrcsetXXS],
	cast([URLsrcsetxs] as nvarchar(4000)) [UrlSrcsetXS],
	cast([URLorig] as nvarchar(4000)) [UrlOrig],
	cast([URLstandard] as nvarchar(4000)) [UrlStandard],
	cast([URLThuMbnail] as nvarchar(4000)) [UrlThumbnail],
	cast([URLjumbo] as nvarchar(4000)) [UrlJumbo],
	cast([FullURL] as nvarchar(4000)) [FullUrl],
	cast([URLCarousel] as nvarchar(4000)) [UrlCarousel],
	cast([ID] as int) [Id],
	cast([ListingID] as int) [ListingId],
	cast([ListingImageTypeID] as int) [ListingImageTypeId],
	cast([Sequence] as int) [Sequence],
	cast([CreateDate] as datetime) [CreateDate],
	cast([ModifyDate] as datetime) [ModifyDate],
	cast([IsActive] as bit) [IsActive],
	cast([LetterBox] as bit) [Letterbox],
	cast([UseCompressedImages] as bit) [UseCompressedImages],
	cast([SrcsetComputed] as bit) [SrcsetComputed] 
From stg.[CC_ListingImage_FinalView]
    ');

  CREATE TABLE "dbo"."CC_ListingImage__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.CC_ListingImage__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."CC_ListingImage__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."CC_ListingImage__dbt_tmp_temp_view"
    end


