create view "stg"."Auct_BillofSalePrinted_InterView__dbt_tmp" as
    
Select
	[BLOCKSALEID] [BlockSaleID],
	[CREATED] [Created]
From stg.[Auct_BillofSalePrinted_Raw]
