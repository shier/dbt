
  
  if object_id ('"dbo"."Auct_Chat__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_Chat__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."Auct_Chat__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."Auct_Chat__dbt_tmp"
    end


   EXEC('create view dbo.Auct_Chat__dbt_tmp_temp_view as
    
Select
	cast([ChatID] as int) [CHATID],
	cast([ToUserID] as int) [TOUSERID],
	cast([FromUsersID] as int) [FROMUSERSID],
	cast([Message] as nvarchar(4000)) [MESSAGE],
	cast([Created] as DATETIME) [CREATED],
	cast([UpdateEventID] as int) [UPDATEEVENTID] 
From stg.[Auct_Chat_FinalView]
    ');

  CREATE TABLE "dbo"."Auct_Chat__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.Auct_Chat__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."Auct_Chat__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_Chat__dbt_tmp_temp_view"
    end


