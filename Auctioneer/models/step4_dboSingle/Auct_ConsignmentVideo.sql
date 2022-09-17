{{ config(materialized='table',schema='dbo')}}
Select
	cast([VideoID] as int) [VIDEOID],
	cast([ConsignmentID] as int) [CONSIGNMENTID],
	cast([URI] as nvarchar(4000)) [URI],
	cast([DateCreated] as DATETIME) [DATECREATED],
	cast([Name] as nvarchar(4000)) [NAME],
	cast([DisplayOrder] as int) [DISPLAYORDER],
	cast([EmbedURI] as nvarchar(4000)) [EMBEDURI],
	cast([Code] as nvarchar(4000)) [CODE],
	cast([Description] as nvarchar(4000)) [DESCRIPTION],
	cast([Active] as bit) [ACTIVE] 
From stg.[Auct_ConsignmentVideo_FinalView]