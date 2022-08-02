
  
  if object_id ('"stg"."Auct_Lot_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_Lot_Inter__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_Lot_Inter__dbt_tmp"','U') is not null
    begin
    drop table "stg"."Auct_Lot_Inter__dbt_tmp"
    end


   EXEC('create view stg.Auct_Lot_Inter__dbt_tmp_temp_view as
    
Select
	CREATED Created,
	NAVPULL_LOT_ID NavPull_Lot_ID,
	CONSIGNMENTID ConsignmentID,
	NAVPULLID NavPullID,
	ADDRESSID AddressID,
	PAYMENTMETHODID PaymentMethodID,
	AMOUNTAPPLIED AmountApplied
From Auct_Lot_Raw
    ');

  CREATE TABLE "stg"."Auct_Lot_Inter__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_Lot_Inter__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."Auct_Lot_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_Lot_Inter__dbt_tmp_temp_view"
    end


