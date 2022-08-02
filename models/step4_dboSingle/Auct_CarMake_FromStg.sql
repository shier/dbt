{{ config(materialized='table',schema='dbo')}}
Select
	cast([CarMakeID] as int) [CarMakeID],
	cast([Active] as bit) [IsActive],
	cast([WebActive] as bit) [WebActive],
	cast([Name] as nvarchar(1000)) [CarMake],
	cast([Created] as datetime) [Created],
	cast([UpdateEventID] as int) [UpdateEventID] 
From stg.[Auct_CarMake_FinalView]