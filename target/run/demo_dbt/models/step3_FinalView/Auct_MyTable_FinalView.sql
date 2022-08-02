create view "stg"."Auct_MyTable_FinalView__dbt_tmp" as
    
Select
	[MyTableID],[Code],[Description] 
From stg.[Auct_MyTable_Incr] 
Where [dbt_valid_to] is null
