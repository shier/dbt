create view "stg"."Auct_Style_Year_FinalView__dbt_tmp" as
    
Select
	[StyleID],[YearID] 
From [Auct_Style_Year_Incr] 
Where [dbt_valid_to] is null
