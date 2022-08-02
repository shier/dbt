{{ config(materialized='view',schema='stg')}}
Select
	[Id] [ID],
	[CreatedOn] [CreatedOn],
	[UpdatedOn] [UpdatedOn],
	[DeletedOn] [DeletedOn],
	cast([GUID] as nvarchar(4000)) [GUID],
	cast([DefaultVariationName] as nvarchar(4000)) [DefaultvariationName],
	cast([Loader] as nvarchar(4000)) [Loader],
	cast([Saver] as nvarchar(4000)) [Saver],
	cast([LastUpdatedUser] as nvarchar(4000)) [LastUpdatedUser],
	cast([Context] as nvarchar(4000)) [ConText],
	cast([Status] as nvarchar(4000)) [Status]
From stg.[AH_Media_Raw]
