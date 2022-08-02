
Select
	[GLCATEGORYID] [GlCategoryID],
	cast([NAME] as nvarchar(4000)) [Name],
	[CREATED] [Created]
From stg.[Auct_GlCategory_Raw]