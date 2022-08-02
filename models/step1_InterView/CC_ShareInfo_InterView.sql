{{ config(materialized='view',schema='stg')}}
Select
	[ShareInfoId] [ShareInfoID],
	cast([Browser] as nvarchar(4000)) [Browser],
	cast([AppUsed] as nvarchar(4000)) [Appused],
	cast([UserAgent] as nvarchar(4000)) [UserAgent],
	cast([UserEmail] as nvarchar(4000)) [UserEmail],
	cast([IpAddress] as nvarchar(4000)) [IpAddress],
	[Latitude] [Latitude],
	[Longitude] [Longitude],
	[CreateDateUTC] [CreateDateUTC],
	[UserId] [UserID],
	[ListingFK] [ListingFK]
From stg.[CC_ShareInfo_Raw]
