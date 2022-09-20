
Select
	cast([ReferringPage] as nvarchar(4000)) [ReferringPage],
	cast([DestinationURL] as nvarchar(4000)) [DestinationUrl],
	cast([AdvertiserName] as nvarchar(4000)) [AdvertiserName],
	cast([IsActive] as bit) [IsActive],
	cast([ID] as int) [Id],
	cast([CreateDate] as datetime) [CreateDate],
	cast([ModifyDate] as datetime) [ModifyDate] 
From stg.[CC_ReSourceGUIDETrack_FinalView]