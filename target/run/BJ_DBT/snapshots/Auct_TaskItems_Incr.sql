
      
  
  if object_id ('"stg"."Auct_TaskItems_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_TaskItems_Incr_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_TaskItems_Incr"','U') is not null
    begin
    drop table "stg"."Auct_TaskItems_Incr"
    end


   EXEC('create view stg.Auct_TaskItems_Incr_temp_view as
    

    select *,
        
    CONVERT(VARCHAR(32), HashBytes(''MD5'', 
        coalesce(cast(TaskItemID as varchar(max)), '''')  + ''|'' + 
    
        coalesce(cast(CONVERT(DATETIME2, ''2022-08-24 12:51:39.527041'') as varchar(max)), '''') 
    ), 2)
 as dbt_scd_id,
        CONVERT(DATETIME2, ''2022-08-24 12:51:39.527041'') as dbt_updated_at,
        CONVERT(DATETIME2, ''2022-08-24 12:51:39.527041'') as dbt_valid_from,
        nullif(CONVERT(DATETIME2, ''2022-08-24 12:51:39.527041''), CONVERT(DATETIME2, ''2022-08-24 12:51:39.527041'')) as dbt_valid_to
    from (
        
	
	SELECT * from stg.[Auct_TaskItems_InterView]
    ) sbq



    ');

  CREATE TABLE "stg"."Auct_TaskItems_Incr"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_TaskItems_Incr_temp_view)

   
  
  if object_id ('"stg"."Auct_TaskItems_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_TaskItems_Incr_temp_view"
    end



  