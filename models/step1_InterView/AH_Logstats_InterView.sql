{{ config(materialized='view',schema='stg')}}
Select
	[FromDate] [FromDate],
	[RangeMinutes] [RangeMinutes],
	[EntryCount] [EntryCount],
	[IsArchived] [IsArchived],
	cast([Severity] as nvarchar(4000)) [Severity]
From stg.[AH_Logstats_Raw]
