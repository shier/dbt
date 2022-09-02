{{ config(materialized='view',schema='stg')}}
Select
	[Id] [ID],
	[CreatedOn] [CreatedOn],
	[UpdatedOn] [UpdatedOn],
	[DeletedOn] [DeletedOn],
	[DateStamp] [DaTestamp],
	cast([Type] as nvarchar(4000)) [Type],
	cast([Reference] as nvarchar(4000)) [Reference],
	cast([SHA1] as nvarchar(4000)) [Sha1]
From stg.[AH_Mediaassets_Raw]
