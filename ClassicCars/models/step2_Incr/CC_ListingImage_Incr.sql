{{ config(materialized='incremental',schema='stg')}}
With hashData as (
		Select
			HASHBYTES('SHA2_256', concat([Hashorig], [Computedsrcset], [URLThuMbnailwIDE], [URLsrcsetretinaxs], [URLsrcsetretinasm], [URLsrcsetretinamd], [URLsrcsetretinalg], [URLsrcsetretinaxl], [URLsrcsetretinaxxl], [URLsrcsetsm], [URLsrcsetmd], [URLsrcsetlg], [URLsrcsetxl], [URLsrcsetxxl], [URLsrcsetretinaxxs], [URLCarouselCompressed], [URLjumboCompressed], [URLThuMbnailCompressed], [URLstandardCompressed], [URLsrcsetxxs], [URLsrcsetxs], [URLorig], [URLstandard], [URLThuMbnail], [URLjumbo], [FullURL], [URLCarousel], Cast([ID] as varchar), Cast([ListingID] as varchar), Cast([ListingImageTypeID] as varchar), Cast([Sequence] as varchar), Cast([CreateDate] as varchar), Cast([ModifyDate] as varchar), Cast([IsActive] as varchar), Cast([LetterBox] as varchar), Cast([UseCompressedImages] as varchar), Cast([SrcsetComputed] as varchar))) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[CC_ListingImage_InterView]
	)
Select * From hashData
{% if is_incremental() %}
	where not exists 
	(
		select hashValue 
		from {{ this }} compareData
		where hashData.hashValue=compareData.hashValue
	)
{% endif %}
