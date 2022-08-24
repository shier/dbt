
      
  
  if object_id ('"stg"."Mer_Clovercache_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."Mer_Clovercache_Incr_temp_view"
    end


   
    
  if object_id ('"stg"."Mer_Clovercache_Incr"','U') is not null
    begin
    drop table "stg"."Mer_Clovercache_Incr"
    end


   EXEC('create view stg.Mer_Clovercache_Incr_temp_view as
    

    select *,
        
    CONVERT(VARCHAR(32), HashBytes(''MD5'', 
        coalesce(cast(ID as varchar(max)), '''')  + ''|'' + 
    
        coalesce(cast(CONVERT(DATETIME2, ''2022-08-24 13:14:10.226554'') as varchar(max)), '''') 
    ), 2)
 as dbt_scd_id,
        CONVERT(DATETIME2, ''2022-08-24 13:14:10.226554'') as dbt_updated_at,
        CONVERT(DATETIME2, ''2022-08-24 13:14:10.226554'') as dbt_valid_from,
        nullif(CONVERT(DATETIME2, ''2022-08-24 13:14:10.226554''), CONVERT(DATETIME2, ''2022-08-24 13:14:10.226554'')) as dbt_valid_to
    from (
        
	
	SELECT * from stg.[Mer_Clovercache_InterView]
    ) sbq



    ');

  CREATE TABLE "stg"."Mer_Clovercache_Incr"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Mer_Clovercache_Incr_temp_view)

   
  
  if object_id ('"stg"."Mer_Clovercache_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."Mer_Clovercache_Incr_temp_view"
    end



  