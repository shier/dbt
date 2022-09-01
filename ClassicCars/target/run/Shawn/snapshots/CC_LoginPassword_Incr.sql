
      
  
  if object_id ('"stg"."CC_LoginPassword_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."CC_LoginPassword_Incr_temp_view"
    end


   
    
  if object_id ('"stg"."CC_LoginPassword_Incr"','U') is not null
    begin
    drop table "stg"."CC_LoginPassword_Incr"
    end


   EXEC('create view stg.CC_LoginPassword_Incr_temp_view as
    

    select *,
        
    CONVERT(VARCHAR(32), HashBytes(''MD5'', 
        coalesce(cast(ID as varchar(max)), '''')  + ''|'' + 
    
        coalesce(cast(CONVERT(DATETIME2, ''2022-08-31 20:20:36.140633'') as varchar(max)), '''') 
    ), 2)
 as dbt_scd_id,
        CONVERT(DATETIME2, ''2022-08-31 20:20:36.140633'') as dbt_updated_at,
        CONVERT(DATETIME2, ''2022-08-31 20:20:36.140633'') as dbt_valid_from,
        nullif(CONVERT(DATETIME2, ''2022-08-31 20:20:36.140633''), CONVERT(DATETIME2, ''2022-08-31 20:20:36.140633'')) as dbt_valid_to
    from (
        
	
	SELECT * from stg.[CC_LoginPassword_InterView]
    ) sbq



    ');

  CREATE TABLE "stg"."CC_LoginPassword_Incr"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.CC_LoginPassword_Incr_temp_view)

   
  
  if object_id ('"stg"."CC_LoginPassword_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."CC_LoginPassword_Incr_temp_view"
    end



  