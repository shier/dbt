{{ config(materialized='table',schema='dbo')}}
Select
	cast([AvailableEngineID] as int) [AvailableEngineID],
	cast([CarModelID] as int) [CarModelID],
	cast([CarEngineID] as int) [CarEngineID],
	cast([AllowDropDown] as nvarchar(4000)) [AllowDropDown],
	cast([Created] as DATETIME) [Created],
	cast([UpdateEventID] as int) [UpdateEventID] 
From stg.[Auct_AvailableEngine_FinalView]