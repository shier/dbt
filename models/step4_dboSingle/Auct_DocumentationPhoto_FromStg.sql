{{ config(materialized='table',schema='dbo')}}
Select
	cast([DocumentationPhotoID] as int) [DocumentationPhotoID],
	cast([PhotoTypeID] as int) [PhotoTypeID],
	cast([PhotoStatusID] as int) [PhotoStatusID],
	cast([ItemID] as int) [ItemID],
	cast([FileName] as nvarchar(4000)) [FileName],
	cast([UncPath] as nvarchar(4000)) [UncPath],
	cast([PhotoSize] as int) [PhotoSize],
	cast([Height] as int) [HEight],
	cast([Width] as int) [WIDth],
	cast([Created] as DATETIME) [Created],
	cast([UpdateEventID] as int) [UpdateEventID],
	cast([TbFileName] as nvarchar(4000)) [TbFileName],
	cast([TbPhotoSize] as int) [TbPhotoSize],
	cast([TbUncPath] as nvarchar(4000)) [TbUncPath],
	cast([TbHeight] as int) [TbhEight],
	cast([TbWidth] as int) [TbwIDth],
	cast([FullPath] as nvarchar(4000)) [FullPath],
	cast([TbfullPath] as nvarchar(4000)) [TbfullPath],
	cast([WebSiteOrder] as int) [WebSiteOrder],
	cast([ShowonWeb] as int) [ShowonWeb],
	cast([WebFileName] as nvarchar(4000)) [WebFileName],
	cast([WebUncPath] as nvarchar(4000)) [WebUncPath],
	cast([RejectionReason] as nvarchar(4000)) [RejectionReason],
	cast([IsMainAdvertising] as int) [IsMainAdvertising] 
From stg.[Auct_DocumentationPhoto_FinalView]