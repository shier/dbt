create view "stg"."Auct_ItemMake_FinalView__dbt_tmp" as
    
Select
	[ItemMakeID],[Name],[ItemTaxTypeID] 
From stg.[Auct_ItemMake_Incr] 
Where [dbt_valid_to] is null
