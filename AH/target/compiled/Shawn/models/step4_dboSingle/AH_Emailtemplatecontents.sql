
Select
	cast([Name] as nvarchar(4000)) [Name],
	cast([Culture] as nvarchar(4000)) [Culture],
	cast([SuBJect] as nvarchar(4000)) [SuBJect],
	cast([Body] as nvarchar(4000)) [Body],
	cast([CreatedOn] as datetime) [CreatedOn],
	cast([UpdatedOn] as datetime) [UpdatedOn],
	cast([DeletedOn] as datetime) [DeletedOn],
	cast([ID] as int) [ID] 
From stg.[AH_Emailtemplatecontents_FinalView]