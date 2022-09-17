{{ config(materialized='table',schema='dbo')}}
Select
	cast([BlockSaleID] as int) [BLOCKSALEID],
	cast([Created] as DATETIME) [CREATED] 
From stg.[Auct_BillofSalePrinted_FinalView]