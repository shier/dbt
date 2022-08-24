{{ config(materialized='view',schema='stg')}}
Select
	[AVAILABLETRANSMISSIONID] [AvailableTransMissionID],
	[CARTRANSMISSIONID] [CarTransMissionID],
	[CARMODELID] [CarModelID],
	cast([ALLOWDROPDOWN] as nvarchar(4000)) [AllowDropDown],
	[CREATED] [Created],
	[UPDATEEVENTID] [UpdateEventID]
From stg.[Auct_AvailableTransMission_Raw]
