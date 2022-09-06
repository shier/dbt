create view "stg"."Auct_Year_FinalView__dbt_tmp" as
    
Select
	[YearID],[DropDownText],[DisplayText] 
From stg.[Auct_Year_Incr] 
Where [dbt_valid_to] is null
