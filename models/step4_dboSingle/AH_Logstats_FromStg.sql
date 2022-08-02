{{ config(materialized='table',schema='dbo')}}
Select
	cast([FromDate] as datetime) [FromDate],
	cast([RangeMinutes] as int) [RangeMinutes],
	cast([EntryCount] as int) [EntryCount],
	cast([IsArchived] as bit) [IsArchived],
	cast([Severity] as nvarchar(4000)) [Severity] 
From stg.[AH_Logstats_FinalView]