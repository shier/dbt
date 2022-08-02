{{ config(materialized='table',schema='dbo')}}
Select
	cast([ID] as int) [ID],
	cast([SqlDaTestamp] as datetime) [SqlDaTestamp],
	cast([Enddttm] as datetime) [Enddttm],
	cast([SourceListingID] as int) [SourceListingID],
	cast([ListingID] as int) [ListingID],
	cast([Origin] as nvarchar(4000)) [Origin] 
From stg.[AH_ListingEnddttmAudit_FinalView]