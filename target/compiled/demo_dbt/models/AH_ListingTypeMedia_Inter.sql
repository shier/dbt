
Select
	Id ID,
	ListingTypeId ListingTypeID,
	Enabled Enabled,
	CreatedOn Createdon,
	UpdatedOn Updatedon,
	DeletedOn Deletedon,
	cast(MediaAssetName as nvarchar(4000)) MediaassetName,
	cast(Scope as nvarchar(4000)) Scope
From AH_ListingTypeMedia_Raw