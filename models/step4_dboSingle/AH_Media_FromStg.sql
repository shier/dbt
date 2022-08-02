{{ config(materialized='table',schema='dbo')}}
Select
	cast([ID] as int) [MediaID],
	cast([CreatedOn] as datetime) [Created_RWXMedia],
	cast([UpdatedOn] as datetime) [UpdatedDate_RWXMedia],
	cast([DeletedOn] as datetime) [DeletedDate_RWXMedia],
	cast([GUID] as uniqueidentifier) [GUID],
	cast([DefaultvariationName] as nvarchar(500)) [DefaultVariationName],
	cast([Loader] as nvarchar(500)) [Loader],
	cast([Saver] as nvarchar(500)) [Saver],
	cast([LastUpdatedUser] as nvarchar(500)) [LastUpdatedUser],
	cast([ConText] as nvarchar(4000)) [Context],
	cast([Status] as nvarchar(100)) [Status] 
From stg.[AH_Media_FinalView]