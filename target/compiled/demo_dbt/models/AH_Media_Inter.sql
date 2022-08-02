
Select
	Id ID,
	CreatedOn Createdon,
	UpdatedOn Updatedon,
	DeletedOn Deletedon,
	cast(GUID as nvarchar(4000)) GUID,
	cast(DefaultVariationName as nvarchar(4000)) DefaultvariationName,
	cast(Loader as nvarchar(4000)) Loader,
	cast(Saver as nvarchar(4000)) Saver,
	cast(LastUpdatedUser as nvarchar(4000)) LastUpdatedUser,
	cast(Context as nvarchar(4000)) ConText,
	cast(Status as nvarchar(4000)) Status
From AH_Media_Raw