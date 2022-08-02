{{ config(materialized='table',schema='dbo')}}
Select
	cast([PhotoTypeID] as int) [PhotoTypeID],
	cast([Name] as nvarchar(4000)) [Name],
	cast([Created] as datetime) [Created],
	cast([UpdateEventID] as int) [UpdateEventID],
	cast([ItemTypeID] as int) [ItemTypeID],
	cast([PhotoFileName] as nvarchar(4000)) [PhotoFileName] 
From stg.[Auct_PhotoType_FinalView]