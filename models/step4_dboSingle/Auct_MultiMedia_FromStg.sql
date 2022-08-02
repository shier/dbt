{{ config(materialized='table',schema='dbo')}}
Select
	cast([MultiMediaID] as int) [MultiMediaID],
	cast([ContentID] as int) [ContentID],
	cast([MultiMediaTypeID] as int) [MultiMediaTypeID],
	cast([FileName] as nvarchar(4000)) [FileName],
	cast([DateCreated] as datetime) [DateCreated],
	cast([Active] as int) [Active],
	cast([MultiMediaCategoryID] as int) [MultiMediaCategoryID],
	cast([Name] as nvarchar(4000)) [Name],
	cast([PathID] as int) [PathID],
	cast([SubPath] as nvarchar(4000)) [SubPath] 
From stg.[Auct_MultiMedia_FinalView]