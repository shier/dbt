
Select
	cast([Active] as bit) [ACTIVE],
	cast([EmailProcessorID] as int) [EMAILPROCESSORID],
	cast([ProcessorClass] as nvarchar(4000)) [PROCESSORCLASS] 
From stg.[Auct_EmailProcessors_FinalView]