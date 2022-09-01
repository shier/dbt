create view "stg"."Auct_EmailProcessors_FinalView__dbt_tmp" as
    
Select
	[EmailProcessorID],[Active],[ProcessorClass] 
From stg.[Auct_EmailProcessors_Incr] 
Where [dbt_valid_to] is null
