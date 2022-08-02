
Select
	PayToProceed PayToproceed,
	Id ID,
	CreatedOn Createdon,
	UpdatedOn Updatedon,
	DeletedOn Deletedon,
	cast(LastUpdatedUser as nvarchar(4000)) LastUpdatedUser,
	cast(Name as nvarchar(4000)) Name,
	cast(FormatString as nvarchar(4000)) FormatString,
	cast(ValidFields as nvarchar(4000)) ValIDFields,
	cast(Description as nvarchar(4000)) Description,
	Amount Amount
From AH_Decorations_Raw