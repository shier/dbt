create view "stg"."Auct_ConnectionString_FinalView__dbt_tmp" as
    
Select
	[TypeName],[ConnectionString],[Environment] 
From stg.[Auct_ConnectionString_Incr] 
Where [dbt_valid_to] is null
