{{ config(materialized='table',schema='dbo')}}
Select
	cast([EmailProcessorID] as int) [EmailProcessorID],
	cast([Active] as bit) [Active],
	cast([ProcessorClass] as nvarchar(4000)) [ProcessorClass] 
From stg.[Auct_EmailProcessors_FinalView]