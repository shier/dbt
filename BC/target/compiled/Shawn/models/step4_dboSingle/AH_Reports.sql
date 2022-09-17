
Select
	cast([SecondstogeneRate] as numeric(19,4)) [SecondsToGenerate],
	cast([ReportName] as nvarchar(4000)) [ReportName],
	cast([Data] as nvarchar(4000)) [Data],
	cast([LastUpdatedUser] as nvarchar(4000)) [LastUpdatedUser],
	cast([CreatedOn] as datetime) [CreatedOn],
	cast([UpdatedOn] as datetime) [UpdatedOn],
	cast([DeletedOn] as datetime) [DeletedOn],
	cast([ID] as int) [Id],
	cast([UserID] as int) [UserId] 
From stg.[AH_Reports_FinalView]