
  
  if object_id ('"dbo"."Auct_UsersKey__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_UsersKey__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."Auct_UsersKey__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."Auct_UsersKey__dbt_tmp"
    end


   EXEC('create view dbo.Auct_UsersKey__dbt_tmp_temp_view as
    
Select
	cast([UsersKeyID] as int) [USERSKEYID],
	cast([UsersID] as int) [USERSID],
	cast([SessionID] as nvarchar(4000)) [SESSIONID],
	cast([IpAddress] as nvarchar(4000)) [IPADDRESS],
	cast([LastActivity] as datetime) [LASTACTIVITY],
	cast([Created] as datetime) [CREATED],
	cast([UpdateEventID] as int) [UPDATEEVENTID] 
From stg.[Auct_UsersKey_FinalView]
    ');

  CREATE TABLE "dbo"."Auct_UsersKey__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.Auct_UsersKey__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."Auct_UsersKey__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_UsersKey__dbt_tmp_temp_view"
    end


