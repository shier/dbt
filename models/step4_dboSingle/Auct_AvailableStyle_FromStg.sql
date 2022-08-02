{{ config(materialized='table',schema='dbo')}}
Select
	cast([AvailableStyleID] as int) [AvailableStyleID],
	cast([CarModelID] as int) [CarModelID],
	cast([CarStyleID] as int) [CarStyleID],
	cast([AllowDropDown] as nvarchar(4000)) [AllowDropDown],
	cast([Created] as DATETIME) [Created],
	cast([UpdateEventID] as int) [UpdateEventID] 
From stg.[Auct_AvailableStyle_FinalView]