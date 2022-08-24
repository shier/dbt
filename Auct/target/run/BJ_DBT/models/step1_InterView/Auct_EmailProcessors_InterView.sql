create view "dbo_stg"."Auct_EmailProcessors_InterView__dbt_tmp" as
    
Select
	[EMAILPROCESSORID] [EmailProcessorID],
	[ACTIVE] [Active],
	cast([PROCESSORCLASS] as nvarchar(4000)) [ProcessorClass]
From stg.[Auct_EmailProcessors_Raw]
