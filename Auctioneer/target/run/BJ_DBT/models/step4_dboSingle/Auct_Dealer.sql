
  
  if object_id ('"dbo"."Auct_Dealer__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_Dealer__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."Auct_Dealer__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."Auct_Dealer__dbt_tmp"
    end


   EXEC('create view dbo.Auct_Dealer__dbt_tmp_temp_view as
    
Select
	cast([DealerID] as int) [DealerID],
	cast([DealerNumber] as nvarchar(4000)) [DealerNumber],
	cast([DealerState] as nvarchar(4000)) [DealerState],
	cast([ReSaleNumber] as nvarchar(4000)) [ReSaleNumber],
	cast([TaxIDNumber] as nvarchar(4000)) [TaxIDNumber],
	cast([TaxIDsTage] as nvarchar(4000)) [TaxIDsTage],
	cast([Created] as DATETIME) [Created],
	cast([UpdateEventID] as int) [UpdateEventID],
	cast([DealerComment] as nvarchar(4000)) [DealerComment],
	cast([DealernumExpire] as DATETIME) [DealerNumExpire],
	cast([DeAlerTaxExpire] as DATETIME) [DeAlertaxExpire],
	cast([EmployeeIDNumber] as nvarchar(4000)) [EmployeeIDNumber] 
From stg.[Auct_Dealer_FinalView]
    ');

  CREATE TABLE "dbo"."Auct_Dealer__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.Auct_Dealer__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."Auct_Dealer__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_Dealer__dbt_tmp_temp_view"
    end


