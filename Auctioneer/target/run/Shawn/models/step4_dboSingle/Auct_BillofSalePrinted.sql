
  
  if object_id ('"dbo"."Auct_BillofSalePrinted__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_BillofSalePrinted__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."Auct_BillofSalePrinted__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."Auct_BillofSalePrinted__dbt_tmp"
    end


   EXEC('create view dbo.Auct_BillofSalePrinted__dbt_tmp_temp_view as
    
Select
	cast([BlockSaleID] as int) [BLOCKSALEID],
	cast([Created] as DATETIME) [CREATED] 
From stg.[Auct_BillofSalePrinted_FinalView]
    ');

  CREATE TABLE "dbo"."Auct_BillofSalePrinted__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.Auct_BillofSalePrinted__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."Auct_BillofSalePrinted__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_BillofSalePrinted__dbt_tmp_temp_view"
    end


