
Select
	Id ID,
	CreatedOn Createdon,
	UpdatedOn Updatedon,
	DeletedOn Deletedon,
	cast(Code as nvarchar(4000)) Code,
	cast(LastUpdatedUser as nvarchar(4000)) LastUpdatedUser
From AH_Languages_Raw