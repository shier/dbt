create view "stg"."Auct_DocumentationPhoto_InterView__dbt_tmp" as
    
Select
	[DOCUMENTATIONPHOTOID] [DocumentationPhotoID],
	[PHOTOTYPEID] [PhotoTypeID],
	[PHOTOSTATUSID] [PhotoStatusID],
	[ITEMID] [ItemID],
	cast([FILENAME] as nvarchar(4000)) [FileName],
	cast([UNCPATH] as nvarchar(4000)) [UncPath],
	[PHOTOSIZE] [PhotoSize],
	[HEIGHT] [Height],
	[WIDTH] [Width],
	[CREATED] [Created],
	[UPDATEEVENTID] [UpdateEventID],
	cast([TBFILENAME] as nvarchar(4000)) [TbFileName],
	[TBPHOTOSIZE] [TbPhotoSize],
	cast([TBUNCPATH] as nvarchar(4000)) [TbUncPath],
	[TBHEIGHT] [TbHeight],
	[TBWIDTH] [TbWidth],
	cast([FULLPATH] as nvarchar(4000)) [FullPath],
	cast([TBFULLPATH] as nvarchar(4000)) [TbfullPath],
	[WEBSITEORDER] [WebSiteOrder],
	[SHOWONWEB] [ShowonWeb],
	cast([WEBFILENAME] as nvarchar(4000)) [WebFileName],
	cast([WEBUNCPATH] as nvarchar(4000)) [WebUncPath],
	cast([REJECTIONREASON] as nvarchar(4000)) [RejectionReason],
	[ISMAINADVERTISING] [IsMainAdvertising]
From stg.[Auct_DocumentationPhoto_Raw]
