
Select
	cast(ReferringPage as nvarchar(4000)) ReferringPage,
	cast(DestinationUrl as nvarchar(4000)) DestinationURL,
	cast(AdvertiserName as nvarchar(4000)) AdvertiserName,
	CreateDate CreateDate,
	ModifyDate ModifyDate,
	Id ID,
	IsActive IsActive
From CC_ReSourceGUIDETrack_Raw