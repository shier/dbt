
  
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
	StartDate StartDate,
	EndDate EndDate,
	CreateDate CreateDate,
	ModifyDate ModifyDate,
	Id ID,
	CouponTypeId CouponTypeID,
	Amount Amount,
	cast(Description as nvarchar(4000)) Description,
	cast(Code as nvarchar(4000)) Code,
	IsActive IsActive
From CC_Coupon_Raw
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


