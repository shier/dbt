
  
  if object_id ('"stg"."Auct_ChargePayment_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_ChargePayment_Inter__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_ChargePayment_Inter__dbt_tmp"','U') is not null
    begin
    drop table "stg"."Auct_ChargePayment_Inter__dbt_tmp"
    end


   EXEC('create view stg.Auct_ChargePayment_Inter__dbt_tmp_temp_view as
    
Select
	CREATED Created,
	CONSIGNMENTID ConsignmentID,
	BIDDERID BidderID,
	VENDORID VendorID,
	MEDIAID MediaID,
	SPONSORID SponsorID,
	CHARGEID ChargeID,
	REFUNDSTATE RefundState,
	CHARGEPAYMENTID ChargePaymentID,
	PAYMENTID PaymentID,
	UPDATEEVENTID UpdateEventID,
	AMOUNT Amount
From Auct_ChargePayment_Raw
    ');

  CREATE TABLE "stg"."Auct_ChargePayment_Inter__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_ChargePayment_Inter__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."Auct_ChargePayment_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_ChargePayment_Inter__dbt_tmp_temp_view"
    end


