
  
  if object_id ('"stg"."Auct_PaytoSeller_Final__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_PaytoSeller_Final__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_PaytoSeller_Final__dbt_tmp"','U') is not null
    begin
    drop table "stg"."Auct_PaytoSeller_Final__dbt_tmp"
    end


   EXEC('create view stg.Auct_PaytoSeller_Final__dbt_tmp_temp_view as
    
Select
	[PaytoSellerID],[TitleReceived],[SellerCommission],[SellerCommissionPercent],[FeeTotal],[PaidFromescrow],[TotalowedtoSeller],[AmountPaidtoSeller],[LotNumber],[Hammer],[VerifiedByUserID],[SellerName],[LotsPurchased],[VerfiedByUserName],[PaymentTypeName],[CompanyName],[Address],[AccountingID],[Notes] 
From stg.[Auct_PaytoSeller_Incr] 
Where [dbt_valid_to] is null
    ');

  CREATE TABLE "stg"."Auct_PaytoSeller_Final__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_PaytoSeller_Final__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."Auct_PaytoSeller_Final__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_PaytoSeller_Final__dbt_tmp_temp_view"
    end


