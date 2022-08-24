{{ config(materialized='view',schema='stg')}}
Select
	[EmailProcessorID],[Active],[ProcessorClass] 
From stg.[Auct_EmailProcessors_Incr] 
Where [dbt_valid_to] is null