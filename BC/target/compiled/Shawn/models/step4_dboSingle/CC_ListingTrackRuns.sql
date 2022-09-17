
Select
	cast([CreateDate] as datetime) [CreateDate],
	cast([ModifyDate] as datetime) [ModifyDate],
	cast([StartDate] as datetime) [StartDate],
	cast([EndDate] as datetime) [EndDate],
	cast([ID] as int) [Id],
	cast([StartID] as int) [StartId],
	cast([EndID] as int) [EndId],
	cast([IsActive] as bit) [IsActive] 
From stg.[CC_ListingTrackRuns_FinalView]