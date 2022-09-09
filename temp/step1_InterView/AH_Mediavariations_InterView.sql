{{ config(materialized='view',schema='stg')}}
Select
	[Id] [ID],
	[CreatedOn] [CreatedOn],
	[UpdatedOn] [UpdatedOn],
	[DeletedOn] [DeletedOn],
	[MediaAssetId] [MediaassetID],
	[MediaId] [MediaID],
	cast([Name] as nvarchar(4000)) [Name]
From stg.[AH_Mediavariations_Raw]
