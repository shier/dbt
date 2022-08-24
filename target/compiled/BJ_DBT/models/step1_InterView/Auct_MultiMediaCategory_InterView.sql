
Select
	[MULTIMEDIACATEGORYID] [MultiMediaCategoryID],
	cast([NAME] as nvarchar(4000)) [Name],
	[ACTIVE] [Active]
From stg.[Auct_MultiMediaCategory_Raw]