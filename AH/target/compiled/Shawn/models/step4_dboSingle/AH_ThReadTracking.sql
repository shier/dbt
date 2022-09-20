
Select
	cast([Name] as nvarchar(4000)) [Name],
	cast([ThReadGUID] as nvarchar(4000)) [ThreadGUID],
	cast([DaTestamp] as datetime) [DateStamp],
	cast([PrimarythRead] as bit) [PrimaryThread] 
From stg.[AH_ThReadTracking_FinalView]