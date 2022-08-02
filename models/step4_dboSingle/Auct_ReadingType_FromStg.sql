{{ config(materialized='table',schema='dbo')}}
Select
	cast([ReadingTypeID] as int) [ReadingTypeID],
	cast([Name] as nvarchar(4000)) [Name],
	cast([Created] as datetime) [Created],
	cast([UpdateEventID] as int) [UpdateEventID] 
From stg.[Auct_ReadingType_FinalView]