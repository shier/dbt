create view "stg"."Auct_Make_Year_FinalView__dbt_tmp" as
    
Select
	[MakeID],[YearID] 
From [Auct_Make_Year_Incr]
