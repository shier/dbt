
Select
	cast(NAME as nvarchar(4000)) Name,
	cast(ACTIVEIMAGEURL as nvarchar(4000)) ActiveImageURL,
	cast(INACTIVEIMAGEURL as nvarchar(4000)) InActiveImageURL,
	cast(RESERVEDIMAGEURL as nvarchar(4000)) ReservedImageURL,
	SITETYPEID SiteTypeID,
	SITECATEGORYID SiteCategoryID,
	CANHAVECHILDREN CanHaveChildren
From Auct_SiteType_Raw