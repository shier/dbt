create view "stg"."Auct_AA_WebData_FinalView__dbt_tmp" as
    
Select
	[CarInfoID],[Horsepower],[OriginalHorsepower] 
From [Auct_AA_WebData_Incr] 
Where [dbt_valid_to] is null
