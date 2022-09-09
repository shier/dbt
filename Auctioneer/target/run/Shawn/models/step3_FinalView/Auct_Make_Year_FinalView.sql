create view "stg"."Auct_Make_Year_FinalView__dbt_tmp" as
    
Select
	[MakeID],[YearID] 
From [Auct_Make_Year_Incr] 
Where [dbt_valid_to] is null
