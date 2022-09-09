{{ config(materialized='view',schema='stg')}}
Select
	[Id] [ID],
	[MediaAssetId] [MediaassetID],
	[MediaMetaDataId] [MediaMetaDataID],
	[CreatedOn] [CreatedOn],
	[UpdatedOn] [UpdatedOn],
	[DeletedOn] [DeletedOn]
From stg.[AH_MediaassetMetaData_Raw]
