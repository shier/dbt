{{ config(materialized='table',schema='dbo')}}
Select
	cast([AvailableOptionsID] as int) [AVAILABLEOPTIONSID],
	cast([CarOptionID] as int) [CAROPTIONID],
	cast([CarModelID] as int) [CARMODELID],
	cast([AllowDropDown] as nvarchar(4000)) [ALLOWDROPDOWN],
	cast([Created] as DATETIME) [CREATED],
	cast([UpdateEventID] as int) [UPDATEEVENTID] 
From stg.[Auct_AvailableOptions_FinalView]