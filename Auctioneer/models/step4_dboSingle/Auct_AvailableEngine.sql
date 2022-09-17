{{ config(materialized='table',schema='dbo')}}
Select
	cast([AvailableEngineID] as int) [AVAILABLEENGINEID],
	cast([CarModelID] as int) [CARMODELID],
	cast([CarEngineID] as int) [CARENGINEID],
	cast([AllowDropDown] as nvarchar(4000)) [ALLOWDROPDOWN],
	cast([Created] as DATETIME) [CREATED],
	cast([UpdateEventID] as int) [UPDATEEVENTID] 
From stg.[Auct_AvailableEngine_FinalView]