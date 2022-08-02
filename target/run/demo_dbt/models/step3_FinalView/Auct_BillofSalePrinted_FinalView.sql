create view "stg"."Auct_BillofSalePrinted_FinalView__dbt_tmp" as
    
Select
	[BlockSaleID],[Created] 
From stg.[Auct_BillofSalePrinted_Incr] 
Where [dbt_valid_to] is null
