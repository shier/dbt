
      
  
  if object_id ('"stg"."CC_ListingImage_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."CC_ListingImage_Incr_temp_view"
    end


   
    
  if object_id ('"stg"."CC_ListingImage_Incr"','U') is not null
    begin
    drop table "stg"."CC_ListingImage_Incr"
    end


   EXEC('create view stg.CC_ListingImage_Incr_temp_view as
    

    select *,
        
    CONVERT(VARCHAR(32), HashBytes(''MD5'', 
        coalesce(cast(ID as varchar(max)), '''')  + ''|'' + 
    
        coalesce(cast(SYSDATETIME() as varchar(max)), '''') 
    ), 2)
 as dbt_scd_id,
        SYSDATETIME() as dbt_updated_at,
        SYSDATETIME() as dbt_valid_from,
        nullif(SYSDATETIME(), SYSDATETIME()) as dbt_valid_to
    from (
        
	
	SELECT * from stg.[CC_ListingImage_Inter]
    ) sbq



    ');

  CREATE TABLE "stg"."CC_ListingImage_Incr"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.CC_ListingImage_Incr_temp_view)

   
  
  if object_id ('"stg"."CC_ListingImage_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."CC_ListingImage_Incr_temp_view"
    end



  