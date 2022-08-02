create view "stg"."AH_NewSalestoInvoice_FinalView__dbt_tmp" as
    
Select
	[LineItemID] 
From stg.[AH_NewSalestoInvoice_Incr] 
Where [dbt_valid_to] is null
