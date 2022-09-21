
  
  if object_id ('"dbo"."Auct_NavPull_Lot__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_NavPull_Lot__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."Auct_NavPull_Lot__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."Auct_NavPull_Lot__dbt_tmp"
    end


   EXEC('create view dbo.Auct_NavPull_Lot__dbt_tmp_temp_view as
    
Select
	cast([AmountApplied] as numeric(19,4)) [AMOUNTAPPLIED],
	cast([NavPull_Lot_ID] as int) [NAVPULL_LOT_ID],
	cast([ConsignmentID] as int) [CONSIGNMENTID],
	cast([NavPullID] as int) [NAVPULLID],
	cast([AddressID] as int) [ADDRESSID],
	cast([Created] as datetime) [CREATED],
	cast([PaymentMethodID] as int) [PAYMENTMETHODID] 
From stg.[Auct_NavPull_Lot_FinalView]
    ');

  CREATE TABLE "dbo"."Auct_NavPull_Lot__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.Auct_NavPull_Lot__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."Auct_NavPull_Lot__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_NavPull_Lot__dbt_tmp_temp_view"
    end


