
  
  if object_id ('"stg"."Auct_SysArticleUpdates_Final__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_SysArticleUpdates_Final__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_SysArticleUpdates_Final__dbt_tmp"','U') is not null
    begin
    drop table "stg"."Auct_SysArticleUpdates_Final__dbt_tmp"
    end


   EXEC('create view stg.Auct_SysArticleUpdates_Final__dbt_tmp_temp_view as
    
Select
	[IDEntity_Support],[Autogen],[PubID],[Sync_Ins_Proc],[Sync_upd_Proc],[Sync_Del_Proc],[Sync_upd_Trig],[Conflict_TableID],[ArtID],[Ins_Conflict_Proc] 
From [Auct_SysArticleUpdates_Incr]
    ');

  CREATE TABLE "stg"."Auct_SysArticleUpdates_Final__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_SysArticleUpdates_Final__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."Auct_SysArticleUpdates_Final__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_SysArticleUpdates_Final__dbt_tmp_temp_view"
    end


