create view "stg"."AH_MediaassetMetaData_InterView__dbt_tmp" as
    
Select
	[Id] [ID],
	[MediaAssetId] [MediaassetID],
	[MediaMetaDataId] [MediaMetaDataID],
	[CreatedOn] [CreatedOn],
	[UpdatedOn] [UpdatedOn],
	[DeletedOn] [DeletedOn]
From stg.[AH_MediaassetMetaData_Raw]
