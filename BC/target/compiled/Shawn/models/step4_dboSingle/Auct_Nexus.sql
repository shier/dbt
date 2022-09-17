
Select
	cast([NexusID] as int) [NEXUSID],
	cast([City] as nvarchar(4000)) [CITY],
	cast([State] as nvarchar(4000)) [STATE],
	cast([County] as nvarchar(4000)) [COUNTY],
	cast([Created] as datetime) [CREATED],
	cast([OnlineBusinessUnitID] as int) [ONLINEBUSINESSUNITID],
	cast([Active] as bit) [ACTIVE] 
From stg.[Auct_Nexus_FinalView]