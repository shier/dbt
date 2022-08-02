
      
  
  if object_id ('"stg"."Auct_PaytoSeller_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_PaytoSeller_Incr_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_PaytoSeller_Incr"','U') is not null
    begin
    drop table "stg"."Auct_PaytoSeller_Incr"
    end


   EXEC('create view stg.Auct_PaytoSeller_Incr_temp_view as
    
With hashData as (
		Select
			HASHBYTES(''MD5'', concat(Cast(TitleReceived as varchar), Cast(SellerCommission as varchar), Cast(SellerCommissionPercent as varchar), Cast(FeeTotal as varchar), Cast(PaidFromescrow as varchar), Cast(TotalowedtoSeller as varchar), Cast(AmountPaidtoSeller as varchar), Cast(LotNumber as varchar), Cast(Hammer as varchar), Cast(VerifiedByUserID as varchar), SellerName, LotsPurchased, VerfiedByUserName, PaymentTypeName, CompanyName, Address, AccountingID, Notes)) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_PaytoSeller_Inter]
	)
Select * From hashData

    ');

  CREATE TABLE "stg"."Auct_PaytoSeller_Incr"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_PaytoSeller_Incr_temp_view)

   
  
  if object_id ('"stg"."Auct_PaytoSeller_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_PaytoSeller_Incr_temp_view"
    end



  