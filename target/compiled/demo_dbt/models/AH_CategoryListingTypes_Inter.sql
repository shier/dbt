
Select
	CreatedOn Createdon,
	UpdatedOn Updatedon,
	DeletedOn Deletedon,
	Id ID,
	CategoryId CategoryID,
	ListingTypeId ListingTypeID,
	cast(LastUpdatedUser as nvarchar(4000)) LastUpdatedUser
From AH_CategoryListingTypes_Raw