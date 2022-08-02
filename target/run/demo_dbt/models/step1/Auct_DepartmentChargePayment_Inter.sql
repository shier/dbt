
  
  if object_id ('"stg"."Auct_DepartmentChargePayment_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_DepartmentChargePayment_Inter__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_DepartmentChargePayment_Inter__dbt_tmp"','U') is not null
    begin
    drop table "stg"."Auct_DepartmentChargePayment_Inter__dbt_tmp"
    end


   EXEC('create view stg.Auct_DepartmentChargePayment_Inter__dbt_tmp_temp_view as
    
Select
	[DEPARTMENTCHARGEPAYMENTID] [DepartmentChargePaymentID],
	[AMOUNT] [Amount],
	[PAYMENTID] [PaymentID],
	[CHARGEID] [ChargeID],
	[VENDORAUCTIONID] [VendorAuctionID],
	[CREATED] [Created],
	[UPDATEEVENTID] [UpdateEventID],
	[SPONSORAUCTIONID] [SponsorAuctionID]
From stg.[Auct_DepartmentChargePayment_Raw]
    ');

  CREATE TABLE "stg"."Auct_DepartmentChargePayment_Inter__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_DepartmentChargePayment_Inter__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."Auct_DepartmentChargePayment_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_DepartmentChargePayment_Inter__dbt_tmp_temp_view"
    end


