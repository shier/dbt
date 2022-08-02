{{ config(materialized='table',schema='dbo')}}
Select
	cast([ID] as int) [ID],
	cast([CreateDate] as datetime) [CreateDate],
	cast([ModifyDate] as datetime) [ModifyDate],
	cast([StartDate] as datetime) [StartDate],
	cast([EndDate] as datetime) [EndDate],
	cast([StartID] as int) [StartID],
	cast([EndID] as int) [EndID],
	cast([IsActive] as bit) [IsActive] 
From stg.[CC_ListingTrackRuns_FinalView]