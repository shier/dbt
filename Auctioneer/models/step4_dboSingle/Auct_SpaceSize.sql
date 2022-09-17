{{ config(materialized='table',schema='dbo')}}
Select
	cast([SpaceSizeID] as int) [SPACESIZEID],
	cast([Name] as nvarchar(4000)) [NAME],
	cast([Created] as datetime) [CREATED],
	cast([UpdateEventID] as int) [UPDATEEVENTID] 
From stg.[Auct_SpaceSize_FinalView]