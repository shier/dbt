
      
  
  if object_id ('"stg"."Auct_SysArticles_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_SysArticles_Incr_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_SysArticles_Incr"','U') is not null
    begin
    drop table "stg"."Auct_SysArticles_Incr"
    end


   EXEC('create view stg.Auct_SysArticles_Incr_temp_view as
    
With hashData as (
		Select
			HASHBYTES(''SHA2_256'', concat(Cast([Fire_Triggers_On_Snapshot] as varchar), Cast([ArtID] as varchar), [Creation_Script], [Del_Cmd], [Description], [Dest_Table], Cast([Filter] as varchar), [Filter_Clause], [Ins_Cmd], [Name], Cast([OBJID] as varchar), Cast([PubID] as varchar), Cast([Pre_Creation_cmd] as varchar), Cast([Status] as varchar), Cast([Sync_OBJID] as varchar), Cast([Type] as varchar), [Upd_Cmd], Cast([SchEMA_Option] as varchar), [Dest_Owner], Cast([Ins_Scripting_Proc] as varchar), Cast([Del_Scripting_Proc] as varchar), Cast([Upd_Scripting_Proc] as varchar), [Custom_Script])) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_SysArticles_InterView]
	)
Select * From hashData

    ');

  CREATE TABLE "stg"."Auct_SysArticles_Incr"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_SysArticles_Incr_temp_view)

   
  
  if object_id ('"stg"."Auct_SysArticles_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_SysArticles_Incr_temp_view"
    end



  