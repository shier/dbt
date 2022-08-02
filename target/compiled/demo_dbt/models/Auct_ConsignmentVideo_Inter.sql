
Select
	DATECREATED DateCreated,
	CONSIGNMENTID ConsignmentID,
	DISPLAYORDER DisplayOrder,
	VIDEOID VideoID,
	ACTIVE Active,
	cast(URI as nvarchar(4000)) URI,
	cast(NAME as nvarchar(4000)) Name,
	cast(EMBEDURI as nvarchar(4000)) EmbedURI,
	cast(CODE as nvarchar(4000)) Code,
	cast(DESCRIPTION as nvarchar(4000)) Description
From Auct_ConsignmentVideo_Raw