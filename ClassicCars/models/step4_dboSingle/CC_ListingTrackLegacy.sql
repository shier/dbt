{{ config(materialized='table',schema='dbo')}}
Select
	cast([ImportID] as nvarchar(4000)) [ImportId],
	cast([ImportSource] as nvarchar(4000)) [ImportSource],
	cast([ImportDate] as datetime) [ImportDate],
	cast([ListingID] as int) [ListingId],
	cast([Views] as int) [Views] 
From stg.[CC_ListingTrackLegacy_FinalView]