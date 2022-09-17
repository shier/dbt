
Select
	cast([CreatedOn] as datetime) [Created_RWXMediaAssets],
	cast([UpdatedOn] as datetime) [UpdatedDate_RWXMediaAssets],
	cast([DeletedOn] as datetime) [DeletedDate_RWXMediaAssets],
	cast([DaTestamp] as datetime) [DateStamp],
	cast([ID] as int) [MediaAssetID_RWX_MediaAssets],
	cast([Type] as nvarchar(500)) [Type],
	cast([Reference] as nvarchar(4000)) [Reference],
	cast([Sha1] as nvarchar(4000)) [Sha1] 
From stg.[AH_Mediaassets_FinalView]