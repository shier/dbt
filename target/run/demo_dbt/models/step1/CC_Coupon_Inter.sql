
  
  if object_id ('"stg"."CC_Coupon_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."CC_Coupon_Inter__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."CC_Coupon_Inter__dbt_tmp"','U') is not null
    begin
    drop table "stg"."CC_Coupon_Inter__dbt_tmp"
    end


   EXEC('create view stg.CC_Coupon_Inter__dbt_tmp_temp_view as
    
Select
	[Id] [ID],
	[IsActive] [IsActive],
	[Amount] [Amount],
	[CreateDate] [CreateDate],
	[ModifyDate] [ModifyDate],
	[StartDate] [StartDate],
	[EndDate] [EndDate],
	[CouponTypeId] [CouponTypeID],
	cast([Code] as nvarchar(4000)) [Code],
	cast([Description] as nvarchar(4000)) [Description]
From stg.[CC_Coupon_Raw]
    ');

  CREATE TABLE "stg"."CC_Coupon_Inter__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.CC_Coupon_Inter__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."CC_Coupon_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."CC_Coupon_Inter__dbt_tmp_temp_view"
    end


