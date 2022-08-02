
      
  
  if object_id ('"stg"."CC_Coupon_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."CC_Coupon_Incr_temp_view"
    end


   
    
  if object_id ('"stg"."CC_Coupon_Incr"','U') is not null
    begin
    drop table "stg"."CC_Coupon_Incr"
    end


   EXEC('create view stg.CC_Coupon_Incr_temp_view as
    
With hashData as (
		Select
			HASHBYTES(''MD5'', concat(Cast(StartDate as varchar), Cast(EndDate as varchar), Cast(CreateDate as varchar), Cast(ModifyDate as varchar), Cast(CouponTypeID as varchar), Cast(Amount as varchar), Description, Code, Cast(IsActive as varchar))) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[CC_Coupon_Inter]
	)
Select * From hashData

    ');

  CREATE TABLE "stg"."CC_Coupon_Incr"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.CC_Coupon_Incr_temp_view)

   
  
  if object_id ('"stg"."CC_Coupon_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."CC_Coupon_Incr_temp_view"
    end



  