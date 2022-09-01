create view "stg"."Auct_Style_FinalView__dbt_tmp" as
    
Select
	[StyleID],[ModelID],[DropDownText],[DisplayText],[Active] 
From stg.[Auct_Style_Incr] 
Where [dbt_valid_to] is null
