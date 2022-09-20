
Select
	cast([EmailName] as nvarchar(4000)) [EmailName],
	cast([UpdatedOn] as datetime) [UpdatedOn],
	cast([DeletedOn] as datetime) [DeletedOn],
	cast([CreatedOn] as datetime) [CreatedOn],
	cast([ID] as int) [Id],
	cast([UserID] as int) [UserId] 
From stg.[AH_UserOptOut_FinalView]