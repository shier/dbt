
  
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
	cast([NavPull_Lot_ID] as int) [NavPull_Lot_ID],
	cast([AmountApplied] as numeric(194)) [AmountApplied],
	cast([ConsignmentID] as int) [ConsignmentID],
	cast([NavPullID] as int) [NavPullID],
	cast([AddressID] as int) [AddressID],
	cast([Created] as datetime) [Created],
	cast([PaymentMethodID] as int) [PaymentMethodID] 
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


