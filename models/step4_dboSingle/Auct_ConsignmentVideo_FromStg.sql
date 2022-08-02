{{ config(materialized='table',schema='dbo')}}
Select
	cast([VideoID] as int) [VideoID],
	cast([ConsignmentID] as int) [ConsignmentID],
	cast([URI] as nvarchar(4000)) [URI],
	cast([DateCreated] as DATETIME) [DateCreated],
	cast([Name] as nvarchar(4000)) [Name],
	cast([DisplayOrder] as int) [DisplayOrder],
	cast([EmbedURI] as nvarchar(4000)) [EmbedURI],
	cast([Code] as nvarchar(4000)) [Code],
	cast([Description] as nvarchar(4000)) [Description],
	cast([Active] as bit) [Active] 
From stg.[Auct_ConsignmentVideo_FinalView]