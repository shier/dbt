create view "stg"."Auct_ItemTaxType_FinalView__dbt_tmp" as
    
Select
	[ItemTaxTypeID],[Name] 
From stg.[Auct_ItemTaxType_Incr] 
Where [dbt_valid_to] is null
