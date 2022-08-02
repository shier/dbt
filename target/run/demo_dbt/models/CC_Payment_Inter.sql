
  
  if object_id ('"stg"."CC_Payment_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."CC_Payment_Inter__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."CC_Payment_Inter__dbt_tmp"','U') is not null
    begin
    drop table "stg"."CC_Payment_Inter__dbt_tmp"
    end


   EXEC('create view stg.CC_Payment_Inter__dbt_tmp_temp_view as
    
Select
	CreateDate CreateDate,
	ModifyDate ModifyDate,
	Id ID,
	ListingId ListingID,
	PaymentTypeId PaymentTypeID,
	CouponId CouponID,
	ChargeAmount ChargeAmount,
	DiscountAmount DisCountAmount,
	Approved Approved,
	IsActive IsActive,
	cast(FirstName as nvarchar(4000)) FirstName,
	cast(LastName as nvarchar(4000)) LastName,
	cast(Telephone as nvarchar(4000)) TelePhone,
	cast(CustomerIp as nvarchar(4000)) CustomerIP,
	cast(LineItemDescription as nvarchar(4000)) LineItemDescription,
	cast(TransactionId as nvarchar(4000)) TransactionID,
	cast(AuthorizationCode as nvarchar(4000)) AuthorizationCode,
	cast(ResponseCode as nvarchar(4000)) ResponseCode,
	cast(Address1 as nvarchar(4000)) Address1,
	cast(Address2 as nvarchar(4000)) Address2,
	cast(City as nvarchar(4000)) City,
	cast(State as nvarchar(4000)) State,
	cast(ZipCode as nvarchar(4000)) ZipCode,
	cast(Email as nvarchar(4000)) Email,
	cast(ResponseReasonCode as nvarchar(4000)) ResponseReasonCode,
	cast(GatewayMessage as nvarchar(4000)) GatewayMessage
From CC_Payment_Raw
    ');

  CREATE TABLE "stg"."CC_Payment_Inter__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.CC_Payment_Inter__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."CC_Payment_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."CC_Payment_Inter__dbt_tmp_temp_view"
    end


