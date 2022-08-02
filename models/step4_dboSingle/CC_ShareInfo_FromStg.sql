{{ config(materialized='table',schema='dbo')}}
Select
	cast([ShareInfoID] as int) [ID],
	cast([Browser] as nvarchar(500)) [Browser],
	cast([Appused] as nvarchar(200)) [AppUsed],
	cast([UserAgent] as nvarchar(500)) [UserAgent],
	cast([UserEmail] as nvarchar(500)) [UserEmail],
	cast([IpAddress] as nvarchar(50)) [IPAddress],
	cast([Latitude] as float) [Latitude],
	cast([Longitude] as float) [Longitude],
	cast([CreateDateUTC] as datetime) [CreatedUTC],
	cast([UserID] as int) [UserID],
	cast([ListingFK] as int) [ListingID] 
From stg.[CC_ShareInfo_FinalView]