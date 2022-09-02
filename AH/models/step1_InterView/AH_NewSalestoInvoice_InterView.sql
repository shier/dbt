{{ config(materialized='view',schema='stg')}}
Select
	[LineItemId] [LineItemID]
From stg.[AH_NewSalestoInvoice_Raw]
