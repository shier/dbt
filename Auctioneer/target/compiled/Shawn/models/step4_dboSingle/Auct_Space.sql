
Select
	cast([SpaceID] as int) [SPACEID],
	cast([Name] as nvarchar(4000)) [NAME],
	cast([BoothID] as int) [BOOTHID],
	cast([SpaceSizeID] as int) [SPACESIZEID],
	cast([AllocatedPower] as int) [ALLOCATEDPOWER],
	cast([Created] as datetime) [CREATED],
	cast([UpdateEventID] as int) [UPDATEEVENTID],
	cast([Phonein] as nvarchar(4000)) [PHONEIN],
	cast([WiredInternet] as nvarchar(4000)) [WIREDINTERNET],
	cast([WirelessInternet] as nvarchar(4000)) [WIRELESSINTERNET] 
From stg.[Auct_Space_FinalView]