
      
  
  if object_id ('"stg"."AH_AuctionEventMedias_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."AH_AuctionEventMedias_Incr_temp_view"
    end


   
    
  if object_id ('"stg"."AH_AuctionEventMedias_Incr"','U') is not null
    begin
    drop table "stg"."AH_AuctionEventMedias_Incr"
    end


   EXEC('create view stg.AH_AuctionEventMedias_Incr_temp_view as
    

    select *,
        
    CONVERT(VARCHAR(32), HashBytes(''MD5'', 
        coalesce(cast(ID as varchar(max)), '''')  + ''|'' + 
    
        coalesce(cast(CONVERT(DATETIME2, ''2022-07-29 17:59:30.745845'') as varchar(max)), '''') 
    ), 2)
 as dbt_scd_id,
        CONVERT(DATETIME2, ''2022-07-29 17:59:30.745845'') as dbt_updated_at,
        CONVERT(DATETIME2, ''2022-07-29 17:59:30.745845'') as dbt_valid_from,
        nullif(CONVERT(DATETIME2, ''2022-07-29 17:59:30.745845''), CONVERT(DATETIME2, ''2022-07-29 17:59:30.745845'')) as dbt_valid_to
    from (
        
	
	SELECT * from stg.[AH_AuctionEventMedias_Inter]
    ) sbq



    ');

  CREATE TABLE "stg"."AH_AuctionEventMedias_Incr"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.AH_AuctionEventMedias_Incr_temp_view)

   
  
  if object_id ('"stg"."AH_AuctionEventMedias_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."AH_AuctionEventMedias_Incr_temp_view"
    end



  