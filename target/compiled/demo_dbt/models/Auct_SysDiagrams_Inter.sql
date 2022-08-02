
Select
	principal_id Principal_ID,
	diagram_id Diagram_ID,
	version Version,
	cast(definition as nvarchar(4000)) Definition,
	cast(name as nvarchar(4000)) Name
From Auct_SysDiagrams_Raw