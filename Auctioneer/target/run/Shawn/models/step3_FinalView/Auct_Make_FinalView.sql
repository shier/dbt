create view "stg"."Auct_Make_FinalView__dbt_tmp" as
    
Select
	[MakeID],[DropDownText],[DisplayText],[Active] 
From stg.[Auct_Make_Incr] 
Where [dbt_valid_to] is null
