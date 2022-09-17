{{ config(materialized='table',schema='dbo')}}
Select
	cast([AvailableStyleID] as int) [AVAILABLESTYLEID],
	cast([CarModelID] as int) [CARMODELID],
	cast([CarStyleID] as int) [CARSTYLEID],
	cast([AllowDropDown] as nvarchar(4000)) [ALLOWDROPDOWN],
	cast([Created] as DATETIME) [CREATED],
	cast([UpdateEventID] as int) [UPDATEEVENTID] 
From stg.[Auct_AvailableStyle_FinalView]