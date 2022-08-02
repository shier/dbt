{{ config(materialized='table',schema='dbo')}}
Select
	cast([AvailableTrimID] as int) [AvailableTrimID],
	cast([CarTrimID] as int) [CarTrimID],
	cast([CarModelID] as int) [CarModelID],
	cast([AllowDropDown] as nvarchar(4000)) [AllowDropDown],
	cast([Created] as DATETIME) [Created],
	cast([UpdateEventID] as int) [UpdateEventID] 
From stg.[Auct_AvailableTrim_FinalView]