{{ config(materialized='table',schema='dbo')}}
Select
	cast([SqlDaTestamp] as datetime) [SQLDateStamp],
	cast([Enddttm] as datetime) [EndDTTM],
	cast([SourceListingID] as int) [SourceListingID],
	cast([ID] as int) [Id],
	cast([ListingID] as int) [ListingID],
	cast([Origin] as nvarchar(4000)) [Origin] 
From stg.[AH_ListingEnddttmAudit_FinalView]