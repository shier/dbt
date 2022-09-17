
Select
	cast([ID] as int) [Id],
	cast([ListingID] as int) [ListingId],
	cast([ListingActionID] as int) [ListingActionId],
	cast([UserID] as int) [UserId],
	cast([CreateDate] as datetime) [CreateDate],
	cast([ModifyDate] as datetime) [ModifyDate],
	cast([IsActive] as bit) [IsActive],
	cast([ReferringPage] as nvarchar(500)) [ReferringPage],
	cast([DataToken] as uniqueidentifier) [DataToken],
	cast([UserAgent] as nvarchar(500)) [UserAgent] 
From stg.[CC_ListingTrack_FinalView]