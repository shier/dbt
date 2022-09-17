{{ config(materialized='table',schema='dbo')}}
Select
	cast([LineItemID] as int) [LineItemId] 
From stg.[AH_NewSalestoInvoice_FinalView]