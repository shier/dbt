{{ config(materialized='view',schema='stg')}}
Select
	[CARTRANSMISSIONID] [CarTransMissionID],
	cast([NAME] as nvarchar(4000)) [Name],
	[CREATED] [Created],
	[UPDATEEVENTID] [UpdateEventID],
	cast([ACTIVE] as nvarchar(4000)) [Active],
	[WEBACTIVE] [WebActive]
From stg.[Auct_CarTransMission_Raw]
