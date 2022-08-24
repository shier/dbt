{{ config(materialized='view',schema='stg')}}
Select
	[BlockSaleID],[Created] 
From stg.[Auct_BillofSalePrinted_Incr] 
Where [dbt_valid_to] is null