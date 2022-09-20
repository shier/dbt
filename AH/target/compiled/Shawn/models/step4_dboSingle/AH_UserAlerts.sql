
Select
	cast([Enabled] as bit) [Enabled],
	cast([ID] as int) [Id],
	cast([UserID] as int) [UserId],
	cast([MakeID] as int) [MakeId],
	cast([ModelID] as int) [ModelId],
	cast([YearFrom] as int) [YearFrom],
	cast([Yearto] as int) [YearTo],
	cast([CreatedOn] as datetime) [CreatedOn],
	cast([UpdatedOn] as datetime) [UpdatedOn],
	cast([DeletedOn] as datetime) [DeletedOn] 
From stg.[AH_UserAlerts_FinalView]