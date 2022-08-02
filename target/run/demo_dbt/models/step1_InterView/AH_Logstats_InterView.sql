create view "stg"."AH_Logstats_InterView__dbt_tmp" as
    
Select
	[FromDate] [FromDate],
	[RangeMinutes] [RangeMinutes],
	[EntryCount] [EntryCount],
	[IsArchived] [IsArchived],
	cast([Severity] as nvarchar(4000)) [Severity]
From stg.[AH_Logstats_Raw]
