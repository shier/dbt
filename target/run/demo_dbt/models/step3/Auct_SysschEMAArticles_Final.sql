
  
  if object_id ('"stg"."Auct_SysschEMAArticles_Final__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_SysschEMAArticles_Final__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_SysschEMAArticles_Final__dbt_tmp"','U') is not null
    begin
    drop table "stg"."Auct_SysschEMAArticles_Final__dbt_tmp"
    end


   EXEC('create view stg.Auct_SysschEMAArticles_Final__dbt_tmp_temp_view as
    
Select
	[ArtID],[Creation_Script],[Description],[Dest_OBJect],[Name],[OBJID],[PubID],[Pre_Creation_cmd],[Status],[Type],[SchEMA_Option],[Dest_Owner] 
From stg.[Auct_SysschEMAArticles_Incr] 
Where [dbt_valid_to] is null
    ');

  CREATE TABLE "stg"."Auct_SysschEMAArticles_Final__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_SysschEMAArticles_Final__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."Auct_SysschEMAArticles_Final__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_SysschEMAArticles_Final__dbt_tmp_temp_view"
    end


