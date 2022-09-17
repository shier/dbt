{{ config(materialized='table',schema='dbo')}}
Select
	cast([PhotoTypeID] as int) [PHOTOTYPEID],
	cast([Name] as nvarchar(4000)) [NAME],
	cast([Created] as datetime) [CREATED],
	cast([UpdateEventID] as int) [UPDATEEVENTID],
	cast([ItemTypeID] as int) [ITEMTYPEID],
	cast([PhotoFileName] as nvarchar(4000)) [PHOTOFILENAME] 
From stg.[Auct_PhotoType_FinalView]