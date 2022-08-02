
Select
	Id ID,
	CreatedOn Createdon,
	UpdatedOn Updatedon,
	DeletedOn Deletedon,
	cast(Name as nvarchar(4000)) Name,
	cast(LastUpdatedUser as nvarchar(4000)) LastUpdatedUser
From AH_ListingTypes_Raw