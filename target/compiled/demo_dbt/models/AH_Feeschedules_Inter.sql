
Select
	PayToProceed PayToproceed,
	Id ID,
	EventId EventID,
	ListingTypeId ListingTypeID,
	CreatedOn Createdon,
	UpdatedOn Updatedon,
	DeletedOn Deletedon,
	cast(Description as nvarchar(4000)) Description,
	cast(LastUpdatedUser as nvarchar(4000)) LastUpdatedUser,
	cast(Name as nvarchar(4000)) Name
From AH_Feeschedules_Raw