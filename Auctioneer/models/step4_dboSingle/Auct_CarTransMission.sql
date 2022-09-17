{{ config(materialized='table',schema='dbo')}}
Select
	cast([CarTransMissionID] as int) [CARTRANSMISSIONID],
	cast([Name] as nvarchar(512)) [NAME],
	cast([Created] as datetime) [CREATED],
	cast([UpdateEventID] as int) [UPDATEEVENTID],
	cast([Active] as bit) [ACTIVE],
	cast([WebActive] as bit) [WEBACTIVE] 
From stg.[Auct_CarTransMission_FinalView]