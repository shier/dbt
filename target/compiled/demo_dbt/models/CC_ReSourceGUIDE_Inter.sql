
Select
	cast(ResourceIdPath as nvarchar(4000)) ReSourceIDPath,
	cast(Slug as nvarchar(4000)) Slug,
	cast(Title as nvarchar(4000)) Title,
	cast(PageContent as nvarchar(4000)) Pagecontent,
	cast(MetaDescription as nvarchar(4000)) MetaDescription,
	cast(FontAwesomeIcon as nvarchar(4000)) FontawesomeIcon,
	cast(Teaser as nvarchar(4000)) Teaser,
	Id ID,
	ParentResourceGuideId ParentreSourceGUIDEID,
	Depth Depth,
	CreateDate CreateDate,
	ModifyDate ModifyDate,
	IsActive IsActive
From CC_ReSourceGUIDE_Raw