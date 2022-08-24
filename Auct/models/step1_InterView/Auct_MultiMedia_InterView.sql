{{ config(materialized='view',schema='stg')}}
Select
	[MULTIMEDIAID] [MultiMediaID],
	[CONTENTID] [ContentID],
	[MULTIMEDIATYPEID] [MultiMediaTypeID],
	cast([FILENAME] as nvarchar(4000)) [FileName],
	[DATECREATED] [DateCreated],
	[ACTIVE] [Active],
	[MULTIMEDIACATEGORYID] [MultiMediaCategoryID],
	cast([NAME] as nvarchar(4000)) [Name],
	[PATHID] [PathID],
	cast([SUBPATH] as nvarchar(4000)) [SubPath]
From stg.[Auct_MultiMedia_Raw]
