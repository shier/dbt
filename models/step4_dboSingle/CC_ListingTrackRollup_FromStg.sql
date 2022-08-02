{{ config(materialized='table',schema='dbo')}}
Select
	cast([ListingID] as int) [ListingID],
	cast([Year] as int) [Year],
	cast([Month] as int) [Month],
	cast([Day] as int) [Day],
	cast([Views] as int) [Views],
	cast([BatchDate] as datetime) [BatchDate],
	cast([BatchID] as nvarchar(4000)) [BatchID] 
From stg.[CC_ListingTrackRollup_FinalView]