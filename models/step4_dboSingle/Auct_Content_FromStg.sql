{{ config(materialized='table',schema='dbo')}}
Select
	cast([ContentID] as int) [ContentID],
	cast([ContentTypeID] as int) [ContentTypeID],
	cast([Name] as nvarchar(4000)) [Name],
	cast([Active] as int) [Active],
	cast([DateCreated] as DATETIME) [DateCreated] 
From stg.[Auct_Content_FinalView]