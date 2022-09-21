
  
  if object_id ('"dbo"."Auct_Logoutlog__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_Logoutlog__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."Auct_Logoutlog__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."Auct_Logoutlog__dbt_tmp"
    end


   EXEC('create view dbo.Auct_Logoutlog__dbt_tmp_temp_view as
    
Select
	cast([LogoutlogID] as int) [LOGOUTLOGID],
	cast([UsersID] as int) [USERSID],
	cast([Login] as DATETIME) [LOGIN],
	cast([Logout] as DATETIME) [LOGOUT],
	cast([Created] as DATETIME) [CREATED],
	cast([UpdateEventID] as int) [UPDATEEVENTID] 
From stg.[Auct_Logoutlog_FinalView]
    ');

  CREATE TABLE "dbo"."Auct_Logoutlog__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.Auct_Logoutlog__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."Auct_Logoutlog__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_Logoutlog__dbt_tmp_temp_view"
    end


