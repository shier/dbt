
With hashData as (
		Select
			HASHBYTES('MD5', concat(Cast(ListingID as varchar), Cast(ListingImageTypeID as varchar), Cast(Sequence as varchar), Cast(CreateDate as varchar), Cast(ModifyDate as varchar), Cast(IsActive as varchar), Cast(LetterBox as varchar), Cast(UseCompressedImages as varchar), Cast(SrcsetComputed as varchar), Hashorig, URLorig, URLstandard, URLsrcsetretinamd, URLsrcsetretinalg, URLsrcsetretinaxl, URLsrcsetretinaxxl, Computedsrcset, URLThuMbnailwIDE, URLsrcsetlg, URLsrcsetxl, URLsrcsetxxl, URLsrcsetretinaxxs, URLsrcsetretinaxs, URLsrcsetretinasm, URLThuMbnailCompressed, URLstandardCompressed, URLsrcsetxxs, URLsrcsetxs, URLsrcsetsm, URLsrcsetmd, URLThuMbnail, URLjumbo, FullURL, URLCarousel, URLCarouselCompressed, URLjumboCompressed)) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[CC_ListingImage_Inter]
	)
Select * From hashData
