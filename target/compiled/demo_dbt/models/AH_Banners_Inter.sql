
Select
	UpdatedOn Updatedon,
	DeletedOn Deletedon,
	CreatedOn Createdon,
	Id ID,
	MediaId MediaID,
	cast(LinkURI as nvarchar(4000)) LinkURI,
	cast(BannerLocation as nvarchar(4000)) BannerLocation
From AH_Banners_Raw