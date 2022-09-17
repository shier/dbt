
Select
	cast([Diagram_ID] as int) [diagram_id],
	cast([Version] as int) [version],
	cast([Principal_ID] as int) [principal_id],
	cast([Definition] as varbinary(8000)) [definition],
	cast([Name] as nvarchar(4000)) [name] 
From stg.[AH_SysDiagrams_FinalView]