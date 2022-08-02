{{ config(materialized='table',schema='dbo')}}
Select
	cast([SpaceID] as int) [SpaceID],
	cast([Name] as nvarchar(4000)) [Name],
	cast([BoothID] as int) [BoothID],
	cast([SpaceSizeID] as int) [SpaceSizeID],
	cast([AllocatedPower] as int) [AllocatedPower],
	cast([Created] as datetime) [Created],
	cast([UpdateEventID] as int) [UpdateEventID],
	cast([Phonein] as nvarchar(4000)) [Phonein],
	cast([WiredInternet] as nvarchar(4000)) [WiredInternet],
	cast([WirelessInternet] as nvarchar(4000)) [WirelessInternet] 
From stg.[Auct_Space_FinalView]