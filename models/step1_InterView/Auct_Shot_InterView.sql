{{ config(materialized='view',schema='stg')}}
Select
	[SHOTID] [ShotID],
	[CONTENTID] [ContentID],
	cast([FILENAME] as nvarchar(4000)) [FileName],
	[DATECREATED] [DateCreated],
	[ACTIVE] [Active],
	cast([NAME] as nvarchar(4000)) [Name],
	[PATHID] [PathID],
	cast([SUBPATH] as nvarchar(4000)) [SubPath],
	[MULTIMEDIATYPEID] [MultiMediaTypeID]
From stg.[Auct_Shot_Raw]
