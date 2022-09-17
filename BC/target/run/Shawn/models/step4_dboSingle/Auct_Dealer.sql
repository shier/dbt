
  
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
	cast([DealerID] as int) [DEALERID],
	cast([DealerNumber] as nvarchar(4000)) [DEALERNUMBER],
	cast([DealerState] as nvarchar(4000)) [DEALERSTATE],
	cast([ReSaleNumber] as nvarchar(4000)) [RESALENUMBER],
	cast([TaxIDNumber] as nvarchar(4000)) [TAXIDNUMBER],
	cast([TaxIDsTage] as nvarchar(4000)) [TAXIDSTAGE],
	cast([Created] as DATETIME) [CREATED],
	cast([UpdateEventID] as int) [UPDATEEVENTID],
	cast([DealerComment] as nvarchar(4000)) [DEALERCOMMENT],
	cast([DealernumExpire] as DATETIME) [DEALERNUMEXPIRE],
	cast([DeAlerTaxExpire] as DATETIME) [DEALERTAXEXPIRE],
	cast([EmployeeIDNumber] as nvarchar(4000)) [EMPLOYEEIDNUMBER] 
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


