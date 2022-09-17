
Select
	cast([ID] as int) [Id],
	cast([DisplayOrder] as int) [DisplayOrder],
	cast([Usehtmleditor] as bit) [UseHTMLEditor],
	cast([Userdefined] as bit) [UserDefined],
	cast([CreatedOn] as datetime) [CreatedOn],
	cast([UpdatedOn] as datetime) [UpdatedOn],
	cast([DeletedOn] as datetime) [DeletedOn],
	cast([Text] as nvarchar(4000)) [Text],
	cast([Name] as nvarchar(4000)) [Name],
	cast([Culture] as nvarchar(4000)) [Culture],
	cast([PageTitle] as nvarchar(4000)) [PageTitle] 
From stg.[AH_Contents_FinalView]