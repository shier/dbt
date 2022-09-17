{{ config(materialized='table',schema='dbo')}}
Select
	cast([Browser] as nvarchar(500)) [Browser],
	cast([Appused] as nvarchar(200)) [AppUsed],
	cast([UserAgent] as nvarchar(500)) [UserAgent],
	cast([UserEmail] as nvarchar(500)) [UserEmail],
	cast([IpAddress] as nvarchar(50)) [IpAddress],
	cast([Latitude] as float) [Latitude],
	cast([Longitude] as float) [Longitude],
	cast([CreateDateUTC] as datetime) [CreateDateUTC],
	cast([ShareInfoID] as int) [ShareInfoId],
	cast([UserID] as int) [UserId],
	cast([ListingFK] as int) [ListingFK] 
From stg.[CC_ShareInfo_FinalView]