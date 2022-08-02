{{ config(materialized='table',schema='dbo')}}
Select
	cast([LineItemID] as int) [LineItemID] 
From stg.[AH_NewSalestoInvoice_FinalView]