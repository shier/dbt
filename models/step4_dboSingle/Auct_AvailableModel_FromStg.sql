{{ config(materialized='table',schema='dbo')}}
Select
	cast([AvailableModelID] as int) [AvailableModelID],
	cast([CarModelID] as int) [CarModelID],
	cast([CarMakeID] as int) [CarMakeID],
	cast([AllowDropDown] as nvarchar(4000)) [AllowDropDown],
	cast([Created] as DATETIME) [Created],
	cast([UpdateEventID] as int) [UpdateEventID] 
From stg.[Auct_AvailableModel_FinalView]