create view "stg"."Auct_AA_WebData_FinalView__dbt_tmp" as
    
Select
	[CarInfoID],[Horsepower],[OriginalHorsepower] 
From [Auct_AA_WebData_Incr]
