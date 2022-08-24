{{ config(materialized='view',schema='stg')}}
Select
	[BLOCKSALEID] [BlockSaleID],
	[CREATED] [Created]
From stg.[Auct_BillofSalePrinted_Raw]
