{{ config(materialized='view',schema='stg')}}
Select
	[GROUPID] [GroupID],
	cast([NAME] as nvarchar(4000)) [Name],
	cast([DISTRIBUTIONEMAIL] as nvarchar(4000)) [DistributionEmail],
	[CREATED] [Created],
	[UPDATEEVENTID] [UpdateEventID],
	[GROUPOWNER] [GroupOwner]
From stg.[Auct_UserGroup_Raw]
