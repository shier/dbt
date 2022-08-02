
      
  
  if object_id ('"stg"."Auct_SysschEMAArticles_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_SysschEMAArticles_Incr_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_SysschEMAArticles_Incr"','U') is not null
    begin
    drop table "stg"."Auct_SysschEMAArticles_Incr"
    end


   EXEC('create view stg.Auct_SysschEMAArticles_Incr_temp_view as
    
With hashData as (
		Select
			HASHBYTES(''MD5'', concat(Description, Dest_OBJect, Name, Dest_Owner, Creation_Script, Cast(Status as varchar), Cast(Type as varchar), Cast(OBJID as varchar), Cast(PubID as varchar), Cast(Pre_Creation_cmd as varchar), Cast(SchEMA_Option as varchar))) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_SysschEMAArticles_Inter]
	)
Select * From hashData

    ');

  CREATE TABLE "stg"."Auct_SysschEMAArticles_Incr"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_SysschEMAArticles_Incr_temp_view)

   
  
  if object_id ('"stg"."Auct_SysschEMAArticles_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_SysschEMAArticles_Incr_temp_view"
    end



  