
Select
	Id ID,
	ListingId ListingID,
	ListingActionId ListingActionID,
	UserId UserID,
	CreateDate CreateDate,
	ModifyDate ModifyDate,
	cast(ReferringPage as nvarchar(4000)) ReferringPage,
	cast(DataToken as nvarchar(4000)) DataToken,
	cast(UserAgent as nvarchar(4000)) UserAgent,
	IsActive IsActive
From CC_ListingTrack_Raw