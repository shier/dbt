{{ config(materialized='table',schema='dbo')}}
Select
	cast([CarTransMissionID] as int) [CarTransmissionID],
	cast([Name] as nvarchar(512)) [CarTransmission],
	cast([Created] as datetime) [Created],
	cast([UpdateEventID] as int) [UpdateEventID],
	cast([Active] as bit) [IsActive],
	cast([WebActive] as bit) [WebActive] 
From stg.[Auct_CarTransMission_FinalView]