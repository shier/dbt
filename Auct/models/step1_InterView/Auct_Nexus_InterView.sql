{{ config(materialized='view',schema='stg')}}
Select
	[NEXUSID] [NexusID],
	cast([CITY] as nvarchar(4000)) [City],
	cast([STATE] as nvarchar(4000)) [State],
	cast([COUNTY] as nvarchar(4000)) [County],
	[CREATED] [Created],
	[ONLINEBUSINESSUNITID] [OnlineBusinessUnitID],
	[ACTIVE] [Active]
From stg.[Auct_Nexus_Raw]
