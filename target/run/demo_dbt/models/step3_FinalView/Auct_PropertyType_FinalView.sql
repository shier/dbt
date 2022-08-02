create view "stg"."Auct_PropertyType_FinalView__dbt_tmp" as
    
Select
	[PropertyTypeID],[Name],[Key],[Active] 
From stg.[Auct_PropertyType_Incr] 
Where [dbt_valid_to] is null
