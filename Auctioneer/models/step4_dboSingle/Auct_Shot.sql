{{ config(materialized='table',schema='dbo')}}
Select
	cast([ShotID] as int) [SHOTID],
	cast([ContentID] as int) [CONTENTID],
	cast([FileName] as nvarchar(4000)) [FILENAME],
	cast([DateCreated] as datetime) [DATECREATED],
	cast([Active] as int) [ACTIVE],
	cast([Name] as nvarchar(4000)) [NAME],
	cast([PathID] as int) [PATHID],
	cast([SubPath] as nvarchar(4000)) [SUBPATH],
	cast([MultiMediaTypeID] as int) [MULTIMEDIATYPEID] 
From stg.[Auct_Shot_FinalView]