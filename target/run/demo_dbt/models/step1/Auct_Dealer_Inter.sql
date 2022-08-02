
  
  if object_id ('"stg"."Auct_Dealer_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_Dealer_Inter__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_Dealer_Inter__dbt_tmp"','U') is not null
    begin
    drop table "stg"."Auct_Dealer_Inter__dbt_tmp"
    end


   EXEC('create view stg.Auct_Dealer_Inter__dbt_tmp_temp_view as
    
Select
	[DEALERID] [DealerID],
	cast([DEALERNUMBER] as nvarchar(4000)) [DealerNumber],
	cast([DEALERSTATE] as nvarchar(4000)) [DealerState],
	cast([RESALENUMBER] as nvarchar(4000)) [ReSaleNumber],
	cast([TAXIDNUMBER] as nvarchar(4000)) [TaxIDNumber],
	cast([TAXIDSTAGE] as nvarchar(4000)) [TaxIDsTage],
	[CREATED] [Created],
	[UPDATEEVENTID] [UpdateEventID],
	cast([DEALERCOMMENT] as nvarchar(4000)) [DealerComment],
	[DEALERNUMEXPIRE] [DealernumExpire],
	[DEALERTAXEXPIRE] [DeAlerTaxExpire],
	cast([EMPLOYEEIDNUMBER] as nvarchar(4000)) [EmployeeIDNumber]
From stg.[Auct_Dealer_Raw]
    ');

  CREATE TABLE "stg"."Auct_Dealer_Inter__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_Dealer_Inter__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."Auct_Dealer_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_Dealer_Inter__dbt_tmp_temp_view"
    end


