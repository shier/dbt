
Select
	TagPK Tagpk,
	cast(TagName as nvarchar(4000)) TagName,
	cast(Slug as nvarchar(4000)) Slug
From CC_Tags_Raw