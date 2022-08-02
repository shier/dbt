{{ config(materialized='table',schema='dbo')}}
Select
	cast([NexusID] as int) [NexusID],
	cast([City] as nvarchar(4000)) [City],
	cast([State] as nvarchar(4000)) [State],
	cast([County] as nvarchar(4000)) [County],
	cast([Created] as datetime) [Created],
	cast([OnlineBusinessUnitID] as int) [OnLineBusinessUnitID],
	cast([Active] as bit) [Active] 
From stg.[Auct_Nexus_FinalView]