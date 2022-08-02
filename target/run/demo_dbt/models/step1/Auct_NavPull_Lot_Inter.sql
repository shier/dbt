
  
  if object_id ('"stg"."Auct_NavPull_Lot_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_NavPull_Lot_Inter__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_NavPull_Lot_Inter__dbt_tmp"','U') is not null
    begin
    drop table "stg"."Auct_NavPull_Lot_Inter__dbt_tmp"
    end


   EXEC('create view stg.Auct_NavPull_Lot_Inter__dbt_tmp_temp_view as
    
Select
	[NAVPULL_LOT_ID] [NavPull_Lot_ID],
	[AMOUNTAPPLIED] [AmountApplied],
	[CONSIGNMENTID] [ConsignmentID],
	[NAVPULLID] [NavPullID],
	[ADDRESSID] [AddressID],
	[CREATED] [Created],
	[PAYMENTMETHODID] [PaymentMethodID]
From stg.[Auct_NavPull_Lot_Raw]
    ');

  CREATE TABLE "stg"."Auct_NavPull_Lot_Inter__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_NavPull_Lot_Inter__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."Auct_NavPull_Lot_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_NavPull_Lot_Inter__dbt_tmp_temp_view"
    end


