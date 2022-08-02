{{ config(materialized='view',schema='stg')}}
Select
	[VIDEOID] [VideoID],
	[CONSIGNMENTID] [ConsignmentID],
	cast([URI] as nvarchar(4000)) [URI],
	[DATECREATED] [DateCreated],
	cast([NAME] as nvarchar(4000)) [Name],
	[DISPLAYORDER] [DisplayOrder],
	cast([EMBEDURI] as nvarchar(4000)) [EmbedURI],
	cast([CODE] as nvarchar(4000)) [Code],
	cast([DESCRIPTION] as nvarchar(4000)) [Description],
	[ACTIVE] [Active]
From stg.[Auct_ConsignmentVideo_Raw]
