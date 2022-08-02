
      
  
  if object_id ('"stg"."Auct_BlockSaleHistory_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_BlockSaleHistory_Incr_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_BlockSaleHistory_Incr"','U') is not null
    begin
    drop table "stg"."Auct_BlockSaleHistory_Incr"
    end


   EXEC('create view stg.Auct_BlockSaleHistory_Incr_temp_view as
    

    select *,
        
    CONVERT(VARCHAR(32), HashBytes(''MD5'', 
        coalesce(cast(BlockSaleID as varchar(max)), '''')  + ''|'' + 
    
        coalesce(cast(CONVERT(DATETIME2, ''2022-07-29 18:13:46.614238'') as varchar(max)), '''') 
    ), 2)
 as dbt_scd_id,
        CONVERT(DATETIME2, ''2022-07-29 18:13:46.614238'') as dbt_updated_at,
        CONVERT(DATETIME2, ''2022-07-29 18:13:46.614238'') as dbt_valid_from,
        nullif(CONVERT(DATETIME2, ''2022-07-29 18:13:46.614238''), CONVERT(DATETIME2, ''2022-07-29 18:13:46.614238'')) as dbt_valid_to
    from (
        
	
	SELECT * from stg.[Auct_BlockSaleHistory_Inter]
    ) sbq



    ');

  CREATE TABLE "stg"."Auct_BlockSaleHistory_Incr"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_BlockSaleHistory_Incr_temp_view)

   
  
  if object_id ('"stg"."Auct_BlockSaleHistory_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_BlockSaleHistory_Incr_temp_view"
    end



  