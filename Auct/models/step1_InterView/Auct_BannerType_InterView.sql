{{ config(materialized='view',schema='stg')}}
Select
	[BANNERTYPEID] [BannerTypeID],
	cast([NAME] as nvarchar(4000)) [Name],
	[CREATED] [Created],
	[UPDATEEVENTID] [UpdateEventID]
From stg.[Auct_BannerType_Raw]
