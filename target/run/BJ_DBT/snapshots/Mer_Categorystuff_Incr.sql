
      
  
  if object_id ('"stg"."Mer_Categorystuff_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."Mer_Categorystuff_Incr_temp_view"
    end


   
    
  if object_id ('"stg"."Mer_Categorystuff_Incr"','U') is not null
    begin
    drop table "stg"."Mer_Categorystuff_Incr"
    end


   EXEC('create view stg.Mer_Categorystuff_Incr_temp_view as
    

    select *,
        
    CONVERT(VARCHAR(32), HashBytes(''MD5'', 
        coalesce(cast(Column1 as varchar(max)), '''')  + ''|'' + 
    
        coalesce(cast(CONVERT(DATETIME2, ''2022-08-24 13:13:01.366748'') as varchar(max)), '''') 
    ), 2)
 as dbt_scd_id,
        CONVERT(DATETIME2, ''2022-08-24 13:13:01.366748'') as dbt_updated_at,
        CONVERT(DATETIME2, ''2022-08-24 13:13:01.366748'') as dbt_valid_from,
        nullif(CONVERT(DATETIME2, ''2022-08-24 13:13:01.366748''), CONVERT(DATETIME2, ''2022-08-24 13:13:01.366748'')) as dbt_valid_to
    from (
        
	
	SELECT * from stg.[Mer_Categorystuff_InterView]
    ) sbq



    ');

  CREATE TABLE "stg"."Mer_Categorystuff_Incr"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Mer_Categorystuff_Incr_temp_view)

   
  
  if object_id ('"stg"."Mer_Categorystuff_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."Mer_Categorystuff_Incr_temp_view"
    end



  