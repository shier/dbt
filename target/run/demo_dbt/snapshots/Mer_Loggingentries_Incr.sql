
      
  
  if object_id ('"stg"."Mer_Loggingentries_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."Mer_Loggingentries_Incr_temp_view"
    end


   
    
  if object_id ('"stg"."Mer_Loggingentries_Incr"','U') is not null
    begin
    drop table "stg"."Mer_Loggingentries_Incr"
    end


   EXEC('create view stg.Mer_Loggingentries_Incr_temp_view as
    

    select *,
        
    CONVERT(VARCHAR(32), HashBytes(''MD5'', 
        coalesce(cast(ID as varchar(max)), '''')  + ''|'' + 
    
        coalesce(cast(CONVERT(DATETIME2, ''2022-07-29 18:44:07.421436'') as varchar(max)), '''') 
    ), 2)
 as dbt_scd_id,
        CONVERT(DATETIME2, ''2022-07-29 18:44:07.421436'') as dbt_updated_at,
        CONVERT(DATETIME2, ''2022-07-29 18:44:07.421436'') as dbt_valid_from,
        nullif(CONVERT(DATETIME2, ''2022-07-29 18:44:07.421436''), CONVERT(DATETIME2, ''2022-07-29 18:44:07.421436'')) as dbt_valid_to
    from (
        
	
	SELECT * from stg.[Mer_Loggingentries_Inter]
    ) sbq



    ');

  CREATE TABLE "stg"."Mer_Loggingentries_Incr"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Mer_Loggingentries_Incr_temp_view)

   
  
  if object_id ('"stg"."Mer_Loggingentries_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."Mer_Loggingentries_Incr_temp_view"
    end



  