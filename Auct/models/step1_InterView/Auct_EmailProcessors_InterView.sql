{{ config(materialized='view',schema='stg')}}
Select
	[EMAILPROCESSORID] [EmailProcessorID],
	[ACTIVE] [Active],
	cast([PROCESSORCLASS] as nvarchar(4000)) [ProcessorClass]
From stg.[Auct_EmailProcessors_Raw]
