create view "stg"."Auct_AcceptionApplicationsBits_FinalView__dbt_tmp" as
    
Select
	[AcceptionApplicationsBit],[Name] 
From stg.[Auct_AcceptionApplicationsBits_Incr] 
Where [dbt_valid_to] is null
