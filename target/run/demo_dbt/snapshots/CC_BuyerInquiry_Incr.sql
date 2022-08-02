
      
  
  if object_id ('"stg"."CC_BuyerInquiry_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."CC_BuyerInquiry_Incr_temp_view"
    end


   
    
  if object_id ('"stg"."CC_BuyerInquiry_Incr"','U') is not null
    begin
    drop table "stg"."CC_BuyerInquiry_Incr"
    end


   EXEC('create view stg.CC_BuyerInquiry_Incr_temp_view as
    

    select *,
        
    CONVERT(VARCHAR(32), HashBytes(''MD5'', 
        coalesce(cast(ID as varchar(max)), '''')  + ''|'' + 
    
        coalesce(cast(CONVERT(DATETIME2, ''2022-07-29 18:32:28.484497'') as varchar(max)), '''') 
    ), 2)
 as dbt_scd_id,
        CONVERT(DATETIME2, ''2022-07-29 18:32:28.484497'') as dbt_updated_at,
        CONVERT(DATETIME2, ''2022-07-29 18:32:28.484497'') as dbt_valid_from,
        nullif(CONVERT(DATETIME2, ''2022-07-29 18:32:28.484497''), CONVERT(DATETIME2, ''2022-07-29 18:32:28.484497'')) as dbt_valid_to
    from (
        
	
	SELECT * from stg.[CC_BuyerInquiry_Inter]
    ) sbq



    ');

  CREATE TABLE "stg"."CC_BuyerInquiry_Incr"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.CC_BuyerInquiry_Incr_temp_view)

   
  
  if object_id ('"stg"."CC_BuyerInquiry_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."CC_BuyerInquiry_Incr_temp_view"
    end



  