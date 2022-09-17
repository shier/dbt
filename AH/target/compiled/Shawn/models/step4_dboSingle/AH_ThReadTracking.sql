
Select
	cast([Name] as nvarchar(4000)) [Name],
	cast([ThReadGUID] as nvarchar(4000)) [ThReadGUID],
	cast([DaTestamp] as datetime) [DaTestamp],
	cast([PrimarythRead] as bit) [PrimarythRead] 
From stg.[AH_ThReadTracking_FinalView]