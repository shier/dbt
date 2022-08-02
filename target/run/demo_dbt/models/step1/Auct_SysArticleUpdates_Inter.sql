
  
  if object_id ('"stg"."Auct_SysArticleUpdates_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_SysArticleUpdates_Inter__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_SysArticleUpdates_Inter__dbt_tmp"','U') is not null
    begin
    drop table "stg"."Auct_SysArticleUpdates_Inter__dbt_tmp"
    end


   EXEC('create view stg.Auct_SysArticleUpdates_Inter__dbt_tmp_temp_view as
    
Select
	[identity_support] [IDEntity_Support],
	[autogen] [Autogen],
	[artid] [ArtID],
	[pubid] [PubID],
	[sync_ins_proc] [Sync_Ins_Proc],
	[sync_upd_proc] [Sync_upd_Proc],
	[sync_del_proc] [Sync_Del_Proc],
	[sync_upd_trig] [Sync_upd_Trig],
	[conflict_tableid] [Conflict_TableID],
	[ins_conflict_proc] [Ins_Conflict_Proc]
From stg.[Auct_SysArticleUpdates_Raw]
    ');

  CREATE TABLE "stg"."Auct_SysArticleUpdates_Inter__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_SysArticleUpdates_Inter__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."Auct_SysArticleUpdates_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_SysArticleUpdates_Inter__dbt_tmp_temp_view"
    end


