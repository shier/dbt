
  
  if object_id ('"stg"."Auct_SysSubScriptions_Final__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_SysSubScriptions_Final__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_SysSubScriptions_Final__dbt_tmp"','U') is not null
    begin
    drop table "stg"."Auct_SysSubScriptions_Final__dbt_tmp"
    end


   EXEC('create view stg.Auct_SysSubScriptions_Final__dbt_tmp_temp_view as
    
Select
	[Loopback_Detection],[Queued_reinit],[ArtID],[SrvID],[Dest_Db],[Status],[Sync_Type],[Login_Name],[SubScription_Type],[Distribution_JobID],[TimeStamp],[Update_Mode],[NoSync_Type],[SrvName] 
From [Auct_SysSubScriptions_Incr]
    ');

  CREATE TABLE "stg"."Auct_SysSubScriptions_Final__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_SysSubScriptions_Final__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."Auct_SysSubScriptions_Final__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_SysSubScriptions_Final__dbt_tmp_temp_view"
    end


