create view "stg"."Auct_ReserveType_FinalView__dbt_tmp" as
    
Select
	[ReserveTypeID],[Name] 
From stg.[Auct_ReserveType_Incr] 
Where [dbt_valid_to] is null
