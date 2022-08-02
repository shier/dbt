{{ config(materialized='table',schema='dbo')}}
Select
	cast([ShotID] as int) [ShotID],
	cast([ContentID] as int) [ContentID],
	cast([FileName] as nvarchar(4000)) [FileName],
	cast([DateCreated] as datetime) [DateCreated],
	cast([Active] as int) [Active],
	cast([Name] as nvarchar(4000)) [Name],
	cast([PathID] as int) [PathID],
	cast([SubPath] as nvarchar(4000)) [SubPath],
	cast([MultiMediaTypeID] as int) [MultiMediaTypeID] 
From stg.[Auct_Shot_FinalView]