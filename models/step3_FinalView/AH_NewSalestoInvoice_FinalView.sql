{{ config(materialized='view',schema='stg')}}
Select
	[LineItemID] 
From stg.[AH_NewSalestoInvoice_Incr] 
Where [dbt_valid_to] is null