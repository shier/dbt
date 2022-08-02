
      
  
  if object_id ('"stg"."Auct_CarStyle_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_CarStyle_Incr_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_CarStyle_Incr"','U') is not null
    begin
    drop table "stg"."Auct_CarStyle_Incr"
    end


   EXEC('create view stg.Auct_CarStyle_Incr_temp_view as
    

    select *,
        
    CONVERT(VARCHAR(32), HashBytes(''MD5'', 
        coalesce(cast(CarStyleID as varchar(max)), '''')  + ''|'' + 
    
        coalesce(cast(CONVERT(DATETIME2, ''2022-07-29 18:14:30.335810'') as varchar(max)), '''') 
    ), 2)
 as dbt_scd_id,
        CONVERT(DATETIME2, ''2022-07-29 18:14:30.335810'') as dbt_updated_at,
        CONVERT(DATETIME2, ''2022-07-29 18:14:30.335810'') as dbt_valid_from,
        nullif(CONVERT(DATETIME2, ''2022-07-29 18:14:30.335810''), CONVERT(DATETIME2, ''2022-07-29 18:14:30.335810'')) as dbt_valid_to
    from (
        
	
	SELECT * from stg.[Auct_CarStyle_Inter]
    ) sbq



    ');

  CREATE TABLE "stg"."Auct_CarStyle_Incr"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_CarStyle_Incr_temp_view)

   
  
  if object_id ('"stg"."Auct_CarStyle_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_CarStyle_Incr_temp_view"
    end



  