
Select
	cast([ID] as int) [Id],
	cast([Description] as nvarchar(4000)) [Description] 
From stg.[CC_AlertModes_FinalView]