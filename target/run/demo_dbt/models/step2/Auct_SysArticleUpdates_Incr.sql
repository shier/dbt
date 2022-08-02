
      
  
  if object_id ('"stg"."Auct_SysArticleUpdates_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_SysArticleUpdates_Incr_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_SysArticleUpdates_Incr"','U') is not null
    begin
    drop table "stg"."Auct_SysArticleUpdates_Incr"
    end


   EXEC('create view stg.Auct_SysArticleUpdates_Incr_temp_view as
    
With hashData as (
		Select
			HASHBYTES(''SHA2_256'', concat(Cast([IDEntity_Support] as varchar), Cast([Autogen] as varchar), Cast([ArtID] as varchar), Cast([PubID] as varchar), Cast([Sync_Ins_Proc] as varchar), Cast([Sync_upd_Proc] as varchar), Cast([Sync_Del_Proc] as varchar), Cast([Sync_upd_Trig] as varchar), Cast([Conflict_TableID] as varchar), Cast([Ins_Conflict_Proc] as varchar))) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_SysArticleUpdates_Inter]
	)
Select * From hashData

    ');

  CREATE TABLE "stg"."Auct_SysArticleUpdates_Incr"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_SysArticleUpdates_Incr_temp_view)

   
  
  if object_id ('"stg"."Auct_SysArticleUpdates_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_SysArticleUpdates_Incr_temp_view"
    end



  