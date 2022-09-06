
      
  
  if object_id ('"stg"."Auct_SysArticleColumns_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_SysArticleColumns_Incr_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_SysArticleColumns_Incr"','U') is not null
    begin
    drop table "stg"."Auct_SysArticleColumns_Incr"
    end


   EXEC('create view stg.Auct_SysArticleColumns_Incr_temp_view as
    
With hashData as (
		Select
			HASHBYTES(''SHA2_256'', concat(Cast([ArtID] as varchar), Cast([ColID] as varchar), Cast([Is_udt] as varchar), Cast([Is_xml] as varchar), Cast([Is_Max] as varchar))) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_SysArticleColumns_InterView]
	)
Select * From hashData

    ');

  CREATE TABLE "stg"."Auct_SysArticleColumns_Incr"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_SysArticleColumns_Incr_temp_view)

   
  
  if object_id ('"stg"."Auct_SysArticleColumns_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_SysArticleColumns_Incr_temp_view"
    end



  