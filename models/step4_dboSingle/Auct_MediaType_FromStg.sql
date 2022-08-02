{{ config(materialized='table',schema='dbo')}}
Select
	cast([MediaTypeID] as int) [MediaTypeID],
	cast([Name] as nvarchar(4000)) [Name],
	cast([Created] as datetime) [Created],
	cast([UpdateEventID] as int) [UpdateEventID] 
From stg.[Auct_MediaType_FinalView]