{{ config(materialized='table',schema='dbo')}}
SELECT
	H_MAMD.[ID] [ID_RWXMediaAssetMetaData],
	H_MAMD.[MediaassetID] [MediaAssetID],
	H_MAMD.[MediaMetaDataID] [MediaMetaDataID_RWXMediaAssetMetaData],
	cast(H_MAMD.[CreatedOn] as datetime) [Created_RWXMediaAssetMetaData],
	cast(H_MAMD.[UpdatedOn] as datetime) [UpdatedDate_RWXMediaAssetMetaData],
	cast(H_MAMD.[DeletedOn] as datetime) [DeletedDate_RWXMediaAssetMetaData],
	H_MA.[ID] [MediaAssetID_RWX_MediaAssets],
	cast(H_MA.[CreatedOn] as datetime) [Created_RWXMediaAssets],
	cast(H_MA.[UpdatedOn] as datetime) [UpdatedDate_RWXMediaAssets],
	cast(H_MA.[DeletedOn] as datetime) [DeletedDate_RWXMediaAssets],
	cast(H_MA.[DaTestamp] as datetime) [DateStamp],
	cast(H_MA.[Type] as nvarchar(500)) [Type],
	cast(H_MA.[Reference] as nvarchar(4000)) [Reference],
	H_MMD.[ID] [MediaMetaDataID_RWXMediaMetaData],
	cast(H_MMD.[Name] as nvarchar(500)) [Name_RWXMediaMetaData],
	cast(H_MMD.[Value] as nvarchar(4000)) [Value],
	cast(H_MMD.[CreatedOn] as datetime) [Created_RWXMediaMetaData],
	cast(H_MMD.[UpdatedOn] as datetime) [UpdatedDate_RWXMediaMetaData],
	cast(H_MMD.[DeletedOn] as datetime) [DeletedDate_RWXMediaMetaData],
	H_MV.[ID],
	cast(H_MV.[CreatedOn] as datetime) [Created_RWXMediaVariations],
	cast(H_MV.[UpdatedOn] as datetime) [UpdatedDate_RWXMediaVariations],
	cast(H_MV.[DeletedOn] as datetime) [DeletedDate_RWXMediaVariations],
	H_MV.[MediaassetID] [MediaAssetID_RWX_MediaVariations],
	H_MV.[MediaID],
	cast(H_MV.[Name] as nvarchar(500)) [Name_RWXMediaVariations]
FROM [stg].[AH_MediaassetMetaData_FinalView] AS H_MAMD 
JOIN [stg].[AH_Mediaassets_FinalView] AS H_MA ON H_MA.[ID]=H_MAMD.[MediaAssetID]
JOIN [stg].[AH_MediaMetaData_FinalView] AS H_MMD ON H_MMD.[ID]=H_MAMD.[MediaMetaDataID]
JOIN [stg].[AH_Mediavariations_FinalView] AS H_MV ON H_MV.[MediaAssetID]=H_MA.[ID]


-- RWX_MediaVariations.MediaAssetId = RWX_MediaAssets.MediaAssetId
-- RWX_MediaVariations.MediaAssetId = RWX_MediaAssets.MediaAssetId
-- RWX_MediaAssetMetaData.MediaAssetId = RWX_MediaAssets.MediaAssetId
-- RWX_MediaAssetMetaData.MediaMetaDataId = RWX_MediaMetaData.MediaMetaDataId