
Select
	CreatedOn Createdon,
	UpdatedOn Updatedon,
	DeletedOn Deletedon,
	Id ID,
	ParentCategoryId ParentCategoryID,
	DisplayOrder DisplayOrder,
	lft Lft,
	rgt Rgt,
	cast(Name as nvarchar(4000)) Name,
	cast(LastUpdatedUser as nvarchar(4000)) LastUpdatedUser,
	cast(Type as nvarchar(4000)) Type,
	cast(MVCAction as nvarchar(4000)) MvcAction,
	cast(RolesAllowed as nvarchar(4000)) RolesAllowed,
	cast(EnabledCustomProperty as nvarchar(4000)) EnabledCustomProperty,
	cast(MetaKeywords as nvarchar(4000)) MetaKeyWords,
	cast(MetaDescription as nvarchar(4000)) MetaDescription,
	cast(PageTitle as nvarchar(4000)) PageTitle,
	cast(PageContent as nvarchar(4000)) Pagecontent
From AH_Categories_Raw