{{ config(materialized='view',schema='stg')}}
Select
	[LocalregionID],[ForeignregionID],[Foreignregiontier] 
From stg.[AH_ImportedregionMap_Incr] 
Where [dbt_valid_to] is null