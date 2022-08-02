
Select
	IsActive IsActive,
	Id ID,
	CreateDate CreateDate,
	ModifyDate ModifyDate,
	StartDate StartDate,
	EndDate EndDate,
	ResourceGuideId ReSourceGUIDEID,
	SequenceGroup SequenceGroup,
	cast(LogoUrl as nvarchar(4000)) LogoURL,
	cast(Title as nvarchar(4000)) Title,
	cast(PageContent as nvarchar(4000)) Pagecontent,
	cast(LinkText as nvarchar(4000)) LinkText,
	cast(LinkUrl as nvarchar(4000)) LinkURL,
	cast(CallToActionText as nvarchar(4000)) CalltoActionText,
	cast(CallToActionUrl as nvarchar(4000)) CalltoActionURL
From CC_ReSourceGUIDEItem_Raw