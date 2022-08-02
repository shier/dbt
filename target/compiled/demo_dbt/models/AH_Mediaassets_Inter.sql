
Select
	Id ID,
	CreatedOn Createdon,
	UpdatedOn Updatedon,
	DeletedOn Deletedon,
	DateStamp DaTestamp,
	cast(Type as nvarchar(4000)) Type,
	cast(Reference as nvarchar(4000)) Reference,
	cast(SHA1 as nvarchar(4000)) Sha1
From AH_Mediaassets_Raw