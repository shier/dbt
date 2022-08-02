{{ config(materialized='table',schema='dbo')}}
Select
	cast([CarModelID] as int) [CarModelID],
	cast([Active] as bit) [IsActive],
	cast([WebActive] as bit) [WebActive],
	cast([Name] as nvarchar(1000)) [CarModel],
	cast([CarTypeID] as int) [CarTypeID],
	cast([Created] as datetime) [Created],
	cast([UpdateEventID] as int) [UpdateEventID],
	cast([RowGUID] as nvarchar(512)) [RowGUID] 
From stg.[Auct_CarModel_FinalView]