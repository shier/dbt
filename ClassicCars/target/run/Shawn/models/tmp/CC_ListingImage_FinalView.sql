create view "stg"."CC_ListingImage_FinalView__dbt_tmp" as
    
Select
	[ID],[Hashorig],[Computedsrcset],[URLThuMbnailwIDE],[URLsrcsetretinaxs],[URLsrcsetretinasm],[URLsrcsetretinamd],[URLsrcsetretinalg],[URLsrcsetretinaxl],[URLsrcsetretinaxxl],[URLsrcsetsm],[URLsrcsetmd],[URLsrcsetlg],[URLsrcsetxl],[URLsrcsetxxl],[URLsrcsetretinaxxs],[URLCarouselCompressed],[URLjumboCompressed],[URLThuMbnailCompressed],[URLstandardCompressed],[URLsrcsetxxs],[URLsrcsetxs],[URLorig],[URLstandard],[URLThuMbnail],[URLjumbo],[FullURL],[URLCarousel],[ListingID],[ListingImageTypeID],[Sequence],[CreateDate],[ModifyDate],[IsActive],[LetterBox],[UseCompressedImages],[SrcsetComputed] 
From [CC_ListingImage_Incr]
