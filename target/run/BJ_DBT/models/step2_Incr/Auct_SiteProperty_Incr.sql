
      
  
  if object_id ('"stg"."Auct_SiteProperty_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_SiteProperty_Incr_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_SiteProperty_Incr"','U') is not null
    begin
    drop table "stg"."Auct_SiteProperty_Incr"
    end


   EXEC('create view stg.Auct_SiteProperty_Incr_temp_view as
    
With hashData as (
		Select
			HASHBYTES(''SHA2_256'', concat(Cast([SiteID] as varchar), Cast([DynamicPropertyID] as varchar), [Value])) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_SiteProperty_InterView]
	)
Select * From hashData

    ');

  CREATE TABLE "stg"."Auct_SiteProperty_Incr"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_SiteProperty_Incr_temp_view)

   
  
  if object_id ('"stg"."Auct_SiteProperty_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_SiteProperty_Incr_temp_view"
    end



  