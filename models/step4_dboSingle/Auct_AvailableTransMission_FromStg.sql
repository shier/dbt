{{ config(materialized='table',schema='dbo')}}
Select
	cast([AvailableTransMissionID] as int) [AvailableTransMissionID],
	cast([CarTransMissionID] as int) [CarTransMissionID],
	cast([CarModelID] as int) [CarModelID],
	cast([AllowDropDown] as nvarchar(4000)) [AllowDropDown],
	cast([Created] as DATETIME) [Created],
	cast([UpdateEventID] as int) [UpdateEventID] 
From stg.[Auct_AvailableTransMission_FinalView]