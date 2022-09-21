
  
  if object_id ('"dbo"."Auct_Profiles__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_Profiles__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."Auct_Profiles__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."Auct_Profiles__dbt_tmp"
    end


   EXEC('create view dbo.Auct_Profiles__dbt_tmp_temp_view as
    
Select
	cast([ProfileID] as int) [PROFILEID],
	cast([UserName] as nvarchar(4000)) [USERNAME],
	cast([ApplicationName] as nvarchar(4000)) [APPLICATIONNAME],
	cast([IsAnonymous] as nvarchar(4000)) [ISANONYMOUS],
	cast([LastActivityDate] as datetime) [LASTACTIVITYDATE],
	cast([LastUpdateddate] as datetime) [LASTUPDATEDDATE],
	cast([IsAuthenticated] as int) [ISAUTHENTICATED] 
From stg.[Auct_Profiles_FinalView]
    ');

  CREATE TABLE "dbo"."Auct_Profiles__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.Auct_Profiles__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."Auct_Profiles__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_Profiles__dbt_tmp_temp_view"
    end


