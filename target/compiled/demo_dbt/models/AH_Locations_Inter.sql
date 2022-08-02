
Select
	cast(LastUpdatedUser as nvarchar(4000)) LastUpdatedUser,
	cast(Name as nvarchar(4000)) Name,
	cast(Description as nvarchar(4000)) Description,
	Amount Amount,
	CreatedOn Createdon,
	UpdatedOn Updatedon,
	DeletedOn Deletedon,
	PayToProceed PayToproceed,
	Id ID
From AH_Locations_Raw