
Select
	CREATED Created,
	NEXUSID NexusID,
	ONLINEBUSINESSUNITID OnlineBusinessUnitID,
	ACTIVE Active,
	cast(CITY as nvarchar(4000)) City,
	cast(STATE as nvarchar(4000)) State,
	cast(COUNTY as nvarchar(4000)) County
From Auct_Nexus_Raw