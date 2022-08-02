create view "stg"."AH_NewSalestoInvoice_InterView__dbt_tmp" as
    
Select
	[LineItemId] [LineItemID]
From stg.[AH_NewSalestoInvoice_Raw]
