create view "stg"."Auct_TaxLevel_FinalView__dbt_tmp" as
    
Select
	[TaxLevelID],[Name] 
From stg.[Auct_TaxLevel_Incr] 
Where [dbt_valid_to] is null
