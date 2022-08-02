
  
  if object_id ('"stg"."CC_PaymentNew_Final__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."CC_PaymentNew_Final__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."CC_PaymentNew_Final__dbt_tmp"','U') is not null
    begin
    drop table "stg"."CC_PaymentNew_Final__dbt_tmp"
    end


   EXEC('create view stg.CC_PaymentNew_Final__dbt_tmp_temp_view as
    
Select
	[ID],[OrderTotal],[OrderDiscount],[ChargeAmount],[CustomerInfo],[PaymentInfo],[TransactionInfo],[IsActive],[Success],[CreateDate],[ModifyDate],[UserID],[PaymentTypeID],[CouponID] 
From stg.[CC_PaymentNew_Incr] 
Where [dbt_valid_to] is null
    ');

  CREATE TABLE "stg"."CC_PaymentNew_Final__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.CC_PaymentNew_Final__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."CC_PaymentNew_Final__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."CC_PaymentNew_Final__dbt_tmp_temp_view"
    end


