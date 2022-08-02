create view "stg"."AH_ThReadTracking_FinalView__dbt_tmp" as
    
Select
	[ThReadGUID],[Name],[DaTestamp],[PrimarythRead] 
From stg.[AH_ThReadTracking_Incr] 
Where [dbt_valid_to] is null
