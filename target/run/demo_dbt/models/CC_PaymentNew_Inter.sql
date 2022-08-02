
  
  if object_id ('"stg"."CC_PaymentNew_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."CC_PaymentNew_Inter__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."CC_PaymentNew_Inter__dbt_tmp"','U') is not null
    begin
    drop table "stg"."CC_PaymentNew_Inter__dbt_tmp"
    end


   EXEC('create view stg.CC_PaymentNew_Inter__dbt_tmp_temp_view as
    
Select
	OrderTotal OrderTotal,
	OrderDiscount OrderDisCount,
	ChargeAmount ChargeAmount,
	cast(CustomerInfo as nvarchar(4000)) CustomerInfo,
	cast(PaymentInfo as nvarchar(4000)) PaymentInfo,
	cast(TransactionInfo as nvarchar(4000)) TransactionInfo,
	IsActive IsActive,
	Success Success,
	CreateDate CreateDate,
	ModifyDate ModifyDate,
	Id ID,
	UserId UserID,
	PaymentTypeId PaymentTypeID,
	CouponId CouponID
From CC_PaymentNew_Raw
    ');

  CREATE TABLE "stg"."CC_PaymentNew_Inter__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.CC_PaymentNew_Inter__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."CC_PaymentNew_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."CC_PaymentNew_Inter__dbt_tmp_temp_view"
    end


