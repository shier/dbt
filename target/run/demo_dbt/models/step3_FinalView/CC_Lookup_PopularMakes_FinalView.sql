create view "stg"."CC_Lookup_PopularMakes_FinalView__dbt_tmp" as
    
Select
	[Make],[DateinsertedUTC] 
From stg.[CC_Lookup_PopularMakes_Incr] 
Where [dbt_valid_to] is null
