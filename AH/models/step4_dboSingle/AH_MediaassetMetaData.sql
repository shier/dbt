{{ config(materialized='table',schema='dbo')}}
Select
	cast([ID] as int) [Id],
	cast([MediaassetID] as int) [MediaAssetId],
	cast([MediaMetaDataID] as int) [MediaMetaDataId],
	cast([CreatedOn] as datetime) [CreatedOn],
	cast([UpdatedOn] as datetime) [UpdatedOn],
	cast([DeletedOn] as datetime) [DeletedOn] 
From stg.[AH_MediaassetMetaData_FinalView]