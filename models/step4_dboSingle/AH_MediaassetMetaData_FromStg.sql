{{ config(materialized='table',schema='dbo')}}
Select
	cast([ID] as int) [ID_RWXMediaAssetMetaData],
	cast([MediaassetID] as int) [MediaAssetID],
	cast([MediaMetaDataID] as int) [MediaMetaDataID_RWXMediaAssetMetaData],
	cast([CreatedOn] as datetime) [Created_RWXMediaAssetMetaData],
	cast([UpdatedOn] as datetime) [UpdatedDate_RWXMediaAssetMetaData],
	cast([DeletedOn] as datetime) [DeletedDate_RWXMediaAssetMetaData] 
From stg.[AH_MediaassetMetaData_FinalView]