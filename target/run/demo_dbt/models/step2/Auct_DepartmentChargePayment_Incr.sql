
      
  
  if object_id ('"stg"."Auct_DepartmentChargePayment_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_DepartmentChargePayment_Incr_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_DepartmentChargePayment_Incr"','U') is not null
    begin
    drop table "stg"."Auct_DepartmentChargePayment_Incr"
    end


   EXEC('create view stg.Auct_DepartmentChargePayment_Incr_temp_view as
    
With hashData as (
		Select
			HASHBYTES(''MD5'', concat(Cast(PaymentID as varchar), Cast(ChargeID as varchar), Cast(VendorAuctionID as varchar), Cast(UpdateEventID as varchar), Cast(SponsorAuctionID as varchar), Cast(Created as varchar), Cast(Amount as varchar))) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_DepartmentChargePayment_Inter]
	)
Select * From hashData

    ');

  CREATE TABLE "stg"."Auct_DepartmentChargePayment_Incr"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_DepartmentChargePayment_Incr_temp_view)

   
  
  if object_id ('"stg"."Auct_DepartmentChargePayment_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_DepartmentChargePayment_Incr_temp_view"
    end



  