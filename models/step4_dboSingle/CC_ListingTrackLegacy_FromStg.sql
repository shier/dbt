{{ config(materialized='table',schema='dbo')}}
Select
	cast([ListingID] as int) [ListingID],
	cast([ImportID] as nvarchar(4000)) [ImportID],
	cast([ImportSource] as nvarchar(4000)) [ImportSource],
	cast([ImportDate] as datetime) [ImportDate],
	cast([Views] as int) [Views] 
From stg.[CC_ListingTrackLegacy_FinalView]