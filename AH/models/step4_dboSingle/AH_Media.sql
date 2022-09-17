{{ config(materialized='table',schema='dbo')}}
Select
	cast([CreatedOn] as datetime) [CreatedOn],
	cast([UpdatedOn] as datetime) [UpdatedOn],
	cast([DeletedOn] as datetime) [DeletedOn],
	cast([ID] as int) [Id],
	cast([GUID] as uniqueidentifier) [GUID],
	cast([DefaultvariationName] as nvarchar(500)) [DefaultVariationName],
	cast([Loader] as nvarchar(500)) [Loader],
	cast([Saver] as nvarchar(500)) [Saver],
	cast([LastUpdatedUser] as nvarchar(500)) [LastUpdatedUser],
	cast([ConText] as nvarchar(4000)) [Context],
	cast([Status] as nvarchar(100)) [Status] 
From stg.[AH_Media_FinalView]