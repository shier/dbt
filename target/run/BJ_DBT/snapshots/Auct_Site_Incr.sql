
      
  
  if object_id ('"stg"."Auct_Site_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_Site_Incr_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_Site_Incr"','U') is not null
    begin
    drop table "stg"."Auct_Site_Incr"
    end


   EXEC('create view stg.Auct_Site_Incr_temp_view as
    

    select *,
        
    CONVERT(VARCHAR(32), HashBytes(''MD5'', 
        coalesce(cast(SiteID as varchar(max)), '''')  + ''|'' + 
    
        coalesce(cast(CONVERT(DATETIME2, ''2022-08-24 12:50:55.510340'') as varchar(max)), '''') 
    ), 2)
 as dbt_scd_id,
        CONVERT(DATETIME2, ''2022-08-24 12:50:55.510340'') as dbt_updated_at,
        CONVERT(DATETIME2, ''2022-08-24 12:50:55.510340'') as dbt_valid_from,
        nullif(CONVERT(DATETIME2, ''2022-08-24 12:50:55.510340''), CONVERT(DATETIME2, ''2022-08-24 12:50:55.510340'')) as dbt_valid_to
    from (
        
	
	SELECT * from stg.[Auct_Site_InterView]
    ) sbq



    ');

  CREATE TABLE "stg"."Auct_Site_Incr"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_Site_Incr_temp_view)

   
  
  if object_id ('"stg"."Auct_Site_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_Site_Incr_temp_view"
    end



  