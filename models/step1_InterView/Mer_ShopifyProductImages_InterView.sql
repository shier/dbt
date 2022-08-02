{{ config(materialized='view',schema='stg')}}
Select
	cast([Id] as nvarchar(4000)) [ID],
	[ImageHeight] [ImageHeight],
	[ImageWidth] [ImageWidth],
	[CreatedDate] [CreatedDate],
	[UpdatedDate] [Updateddate],
	[RemovedDate] [RemovedDate],
	cast([ProductId] as nvarchar(4000)) [ProductID],
	cast([ImageUrl] as nvarchar(4000)) [ImageURL],
	cast([Alt] as nvarchar(4000)) [Alt]
From stg.[Mer_ShopifyProductImages_Raw]
