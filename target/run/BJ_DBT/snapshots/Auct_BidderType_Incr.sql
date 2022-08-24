
      
  
  if object_id ('"stg"."Auct_BidderType_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_BidderType_Incr_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_BidderType_Incr"','U') is not null
    begin
    drop table "stg"."Auct_BidderType_Incr"
    end


   EXEC('create view stg.Auct_BidderType_Incr_temp_view as
    

    select *,
        
    CONVERT(VARCHAR(32), HashBytes(''MD5'', 
        coalesce(cast(BidderTypeID as varchar(max)), '''')  + ''|'' + 
    
        coalesce(cast(CONVERT(DATETIME2, ''2022-08-24 12:38:29.050706'') as varchar(max)), '''') 
    ), 2)
 as dbt_scd_id,
        CONVERT(DATETIME2, ''2022-08-24 12:38:29.050706'') as dbt_updated_at,
        CONVERT(DATETIME2, ''2022-08-24 12:38:29.050706'') as dbt_valid_from,
        nullif(CONVERT(DATETIME2, ''2022-08-24 12:38:29.050706''), CONVERT(DATETIME2, ''2022-08-24 12:38:29.050706'')) as dbt_valid_to
    from (
        
	
	SELECT * from stg.[Auct_BidderType_InterView]
    ) sbq



    ');

  CREATE TABLE "stg"."Auct_BidderType_Incr"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_BidderType_Incr_temp_view)

   
  
  if object_id ('"stg"."Auct_BidderType_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_BidderType_Incr_temp_view"
    end



  