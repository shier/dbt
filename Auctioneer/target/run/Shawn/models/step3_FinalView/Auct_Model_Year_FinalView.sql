create view "stg"."Auct_Model_Year_FinalView__dbt_tmp" as
    
Select
	[ModelID],[YearID] 
From [Auct_Model_Year_Incr] 
Where [dbt_valid_to] is null
