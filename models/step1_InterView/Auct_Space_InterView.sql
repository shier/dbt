{{ config(materialized='view',schema='stg')}}
Select
	[SPACEID] [SpaceID],
	cast([NAME] as nvarchar(4000)) [Name],
	[BOOTHID] [BoothID],
	[SPACESIZEID] [SpaceSizeID],
	[ALLOCATEDPOWER] [AllocatedPower],
	[CREATED] [Created],
	[UPDATEEVENTID] [UpdateEventID],
	cast([PHONEIN] as nvarchar(4000)) [Phonein],
	cast([WIREDINTERNET] as nvarchar(4000)) [WiredInternet],
	cast([WIRELESSINTERNET] as nvarchar(4000)) [WirelessInternet]
From stg.[Auct_Space_Raw]
