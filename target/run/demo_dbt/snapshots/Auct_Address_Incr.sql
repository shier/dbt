
      
  
  if object_id ('"stg"."Auct_Address_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_Address_Incr_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_Address_Incr"','U') is not null
    begin
    drop table "stg"."Auct_Address_Incr"
    end


   EXEC('create view stg.Auct_Address_Incr_temp_view as
    

    select *,
        
    CONVERT(VARCHAR(32), HashBytes(''MD5'', 
        coalesce(cast(AddressID as varchar(max)), '''')  + ''|'' + 
    
        coalesce(cast(CONVERT(DATETIME2, ''2022-07-29 18:11:29.917779'') as varchar(max)), '''') 
    ), 2)
 as dbt_scd_id,
        CONVERT(DATETIME2, ''2022-07-29 18:11:29.917779'') as dbt_updated_at,
        CONVERT(DATETIME2, ''2022-07-29 18:11:29.917779'') as dbt_valid_from,
        nullif(CONVERT(DATETIME2, ''2022-07-29 18:11:29.917779''), CONVERT(DATETIME2, ''2022-07-29 18:11:29.917779'')) as dbt_valid_to
    from (
        
	
	SELECT * from stg.[Auct_Address_Inter]
    ) sbq



    ');

  CREATE TABLE "stg"."Auct_Address_Incr"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_Address_Incr_temp_view)

   
  
  if object_id ('"stg"."Auct_Address_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_Address_Incr_temp_view"
    end



  