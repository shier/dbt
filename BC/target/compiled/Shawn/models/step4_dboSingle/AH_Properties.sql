
Select
	cast([Value] as nvarchar(4000)) [Value],
	cast([Name] as nvarchar(4000)) [Name],
	cast([CreatedOn] as datetime) [CreatedOn],
	cast([UpdatedOn] as datetime) [UpdatedOn],
	cast([DeletedOn] as datetime) [DeletedOn],
	cast([ID] as int) [Id],
	cast([LineItemID] as int) [LineItemId] 
From stg.[AH_Properties_FinalView]