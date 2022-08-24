
      
  
  if object_id ('"stg"."Auct_ContactSalutation_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_ContactSalutation_Incr_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_ContactSalutation_Incr"','U') is not null
    begin
    drop table "stg"."Auct_ContactSalutation_Incr"
    end


   EXEC('create view stg.Auct_ContactSalutation_Incr_temp_view as
    

    select *,
        
    CONVERT(VARCHAR(32), HashBytes(''MD5'', 
        coalesce(cast(ContactSalutationID as varchar(max)), '''')  + ''|'' + 
    
        coalesce(cast(CONVERT(DATETIME2, ''2022-08-24 12:41:09.598846'') as varchar(max)), '''') 
    ), 2)
 as dbt_scd_id,
        CONVERT(DATETIME2, ''2022-08-24 12:41:09.598846'') as dbt_updated_at,
        CONVERT(DATETIME2, ''2022-08-24 12:41:09.598846'') as dbt_valid_from,
        nullif(CONVERT(DATETIME2, ''2022-08-24 12:41:09.598846''), CONVERT(DATETIME2, ''2022-08-24 12:41:09.598846'')) as dbt_valid_to
    from (
        
	
	SELECT * from stg.[Auct_ContactSalutation_InterView]
    ) sbq



    ');

  CREATE TABLE "stg"."Auct_ContactSalutation_Incr"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_ContactSalutation_Incr_temp_view)

   
  
  if object_id ('"stg"."Auct_ContactSalutation_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_ContactSalutation_Incr_temp_view"
    end



  