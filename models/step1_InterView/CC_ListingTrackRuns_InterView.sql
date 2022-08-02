{{ config(materialized='view',schema='stg')}}
Select
	[Id] [ID],
	[CreateDate] [CreateDate],
	[ModifyDate] [ModifyDate],
	[StartDate] [StartDate],
	[EndDate] [EndDate],
	[StartId] [StartID],
	[EndId] [EndID],
	[IsActive] [IsActive]
From stg.[CC_ListingTrackRuns_Raw]
