{{ config(materialized='table',schema='dbo')}}
Select
	cast([AvailableModelID] as int) [AVAILABLEMODELID],
	cast([CarModelID] as int) [CARMODELID],
	cast([CarMakeID] as int) [CARMAKEID],
	cast([AllowDropDown] as nvarchar(4000)) [ALLOWDROPDOWN],
	cast([Created] as DATETIME) [CREATED],
	cast([UpdateEventID] as int) [UPDATEEVENTID] 
From stg.[Auct_AvailableModel_FinalView]