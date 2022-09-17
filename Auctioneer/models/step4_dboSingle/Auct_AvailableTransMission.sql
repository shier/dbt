{{ config(materialized='table',schema='dbo')}}
Select
	cast([AvailableTransMissionID] as int) [AVAILABLETRANSMISSIONID],
	cast([CarTransMissionID] as int) [CARTRANSMISSIONID],
	cast([CarModelID] as int) [CARMODELID],
	cast([AllowDropDown] as nvarchar(4000)) [ALLOWDROPDOWN],
	cast([Created] as DATETIME) [CREATED],
	cast([UpdateEventID] as int) [UPDATEEVENTID] 
From stg.[Auct_AvailableTransMission_FinalView]