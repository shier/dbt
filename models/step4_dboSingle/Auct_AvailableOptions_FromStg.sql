{{ config(materialized='table',schema='dbo')}}
Select
	cast([AvailableOptionsID] as int) [AvailableOptionsID],
	cast([CarOptionID] as int) [CarOptionID],
	cast([CarModelID] as int) [CarModelID],
	cast([AllowDropDown] as nvarchar(4000)) [AllowDropDown],
	cast([Created] as DATETIME) [Created],
	cast([UpdateEventID] as int) [UpdateEventID] 
From stg.[Auct_AvailableOptions_FinalView]