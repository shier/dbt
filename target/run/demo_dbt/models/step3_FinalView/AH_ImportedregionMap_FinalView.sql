create view "stg"."AH_ImportedregionMap_FinalView__dbt_tmp" as
    
Select
	[LocalregionID],[ForeignregionID],[Foreignregiontier] 
From stg.[AH_ImportedregionMap_Incr] 
Where [dbt_valid_to] is null
