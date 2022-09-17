
  
  if object_id ('"dbo"."Auct_CarCredit__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_CarCredit__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."Auct_CarCredit__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."Auct_CarCredit__dbt_tmp"
    end


   EXEC('create view dbo.Auct_CarCredit__dbt_tmp_temp_view as
    
Select
	cast([CarCreditID] as int) [CARCREDITID],
	cast([BlockSaleID] as int) [BLOCKSALEID],
	cast([Created] as DATETIME) [CREATED],
	cast([UpdateEventID] as int) [UPDATEEVENTID],
	cast([AmountAdjusted] as numeric(19,4)) [AMOUNTADJUSTED] 
From stg.[Auct_CarCredit_FinalView]
    ');

  CREATE TABLE "dbo"."Auct_CarCredit__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.Auct_CarCredit__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."Auct_CarCredit__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_CarCredit__dbt_tmp_temp_view"
    end


