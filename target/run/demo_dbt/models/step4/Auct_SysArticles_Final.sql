
  
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
	[Fire_Triggers_On_Snapshot],[Description],[Dest_Table],[Filter_Clause],[Ins_Cmd],[Name],[Upd_Cmd],[Creation_Script],[Del_Cmd],[Dest_Owner],[Custom_Script],[SchEMA_Option],[Status],[Sync_OBJID],[Type],[Ins_Scripting_Proc],[Del_Scripting_Proc],[Upd_Scripting_Proc],[ArtID],[Filter],[OBJID],[PubID],[Pre_Creation_cmd] 
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


