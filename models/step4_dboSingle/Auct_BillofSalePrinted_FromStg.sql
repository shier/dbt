{{ config(materialized='table',schema='dbo')}}
Select
	cast([BlockSaleID] as int) [BlockSaleID],
	cast([Created] as DATETIME) [Created] 
From stg.[Auct_BillofSalePrinted_FinalView]