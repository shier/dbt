
      
  
  if object_id ('"stg"."AH_Customcurrencies_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."AH_Customcurrencies_Incr_temp_view"
    end


   
    
  if object_id ('"stg"."AH_Customcurrencies_Incr"','U') is not null
    begin
    drop table "stg"."AH_Customcurrencies_Incr"
    end


   EXEC('create view stg.AH_Customcurrencies_Incr_temp_view as
    

    select *,
        
    CONVERT(VARCHAR(32), HashBytes(''MD5'', 
        coalesce(cast(ID as varchar(max)), '''')  + ''|'' + 
    
        coalesce(cast(CONVERT(DATETIME2, ''2022-08-24 12:27:03.843903'') as varchar(max)), '''') 
    ), 2)
 as dbt_scd_id,
        CONVERT(DATETIME2, ''2022-08-24 12:27:03.843903'') as dbt_updated_at,
        CONVERT(DATETIME2, ''2022-08-24 12:27:03.843903'') as dbt_valid_from,
        nullif(CONVERT(DATETIME2, ''2022-08-24 12:27:03.843903''), CONVERT(DATETIME2, ''2022-08-24 12:27:03.843903'')) as dbt_valid_to
    from (
        
	
	SELECT * from stg.[AH_Customcurrencies_InterView]
    ) sbq



    ');

  CREATE TABLE "stg"."AH_Customcurrencies_Incr"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.AH_Customcurrencies_Incr_temp_view)

   
  
  if object_id ('"stg"."AH_Customcurrencies_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."AH_Customcurrencies_Incr_temp_view"
    end



  