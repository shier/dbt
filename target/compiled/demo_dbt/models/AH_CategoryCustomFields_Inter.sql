
Select
	Id ID,
	CategoryId CategoryID,
	CustomFieldId CustomFieldID,
	DeletedOn Deletedon,
	CreatedOn Createdon,
	UpdatedOn Updatedon,
	cast(LastUpdatedUser as nvarchar(4000)) LastUpdatedUser
From AH_CategoryCustomFields_Raw