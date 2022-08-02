{{ config(materialized='table',schema='dbo')}}
Select
	cast([ID] as nvarchar(4000)) [ID],
	cast([ImageHeight] as int) [ImageHeight],
	cast([ImageWidth] as int) [ImageWidth],
	cast([CreatedDate] as datetime) [CreatedDate],
	cast([Updateddate] as datetime) [Updateddate],
	cast([RemovedDate] as datetime) [RemovedDate],
	cast([ProductID] as nvarchar(4000)) [ProductID],
	cast([ImageURL] as nvarchar(4000)) [ImageURL],
	cast([Alt] as nvarchar(4000)) [Alt] 
From stg.[Mer_ShopifyProductImages_FinalView]