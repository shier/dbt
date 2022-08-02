
  
  if object_id ('"stg"."Auct_SysArticles_Final__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_SysArticles_Final__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_SysArticles_Final__dbt_tmp"','U') is not null
    begin
    drop table "stg"."Auct_SysArticles_Final__dbt_tmp"
    end


   EXEC('create view stg.Auct_SysArticles_Final__dbt_tmp_temp_view as
    
Select
	[Fire_Triggers_On_Snapshot],[ArtID],[Creation_Script],[Del_Cmd],[Description],[Dest_Table],[Filter],[Filter_Clause],[Ins_Cmd],[Name],[OBJID],[PubID],[Pre_Creation_cmd],[Status],[Sync_OBJID],[Type],[Upd_Cmd],[SchEMA_Option],[Dest_Owner],[Ins_Scripting_Proc],[Del_Scripting_Proc],[Upd_Scripting_Proc],[Custom_Script] 
From [Auct_SysArticles_Incr]
    ');

  CREATE TABLE "stg"."Auct_SysArticles_Final__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_SysArticles_Final__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."Auct_SysArticles_Final__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_SysArticles_Final__dbt_tmp_temp_view"
    end


