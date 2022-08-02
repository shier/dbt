
      
  
  if object_id ('"stg"."Auct_EventType_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_EventType_Incr_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_EventType_Incr"','U') is not null
    begin
    drop table "stg"."Auct_EventType_Incr"
    end


   EXEC('create view stg.Auct_EventType_Incr_temp_view as
    

    select *,
        
    CONVERT(VARCHAR(32), HashBytes(''MD5'', 
        coalesce(cast(EventTypeID as varchar(max)), '''')  + ''|'' + 
    
        coalesce(cast(CONVERT(DATETIME2, ''2022-07-29 18:19:28.480399'') as varchar(max)), '''') 
    ), 2)
 as dbt_scd_id,
        CONVERT(DATETIME2, ''2022-07-29 18:19:28.480399'') as dbt_updated_at,
        CONVERT(DATETIME2, ''2022-07-29 18:19:28.480399'') as dbt_valid_from,
        nullif(CONVERT(DATETIME2, ''2022-07-29 18:19:28.480399''), CONVERT(DATETIME2, ''2022-07-29 18:19:28.480399'')) as dbt_valid_to
    from (
        
	
	SELECT * from stg.[Auct_EventType_Inter]
    ) sbq



    ');

  CREATE TABLE "stg"."Auct_EventType_Incr"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_EventType_Incr_temp_view)

   
  
  if object_id ('"stg"."Auct_EventType_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_EventType_Incr_temp_view"
    end



  