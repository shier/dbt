
  
  if object_id ('"dbo"."Auct_Profiles_FromStg__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_Profiles_FromStg__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."Auct_Profiles_FromStg__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."Auct_Profiles_FromStg__dbt_tmp"
    end


   EXEC('create view dbo.Auct_Profiles_FromStg__dbt_tmp_temp_view as
    
Select
	cast([ProfileID] as int) [ProFileID],
	cast([UserName] as nvarchar(4000)) [UserName],
	cast([ApplicationName] as nvarchar(4000)) [ApplicationName],
	cast([IsAnonymous] as nvarchar(4000)) [IsAnonymous],
	cast([LastActivityDate] as datetime) [LastActivityDate],
	cast([LastUpdateddate] as datetime) [LastUpdateddate],
	cast([IsAuthenticated] as int) [IsAuthenticated] 
From stg.[Auct_Profiles_FinalView]
    ');

  CREATE TABLE "dbo"."Auct_Profiles_FromStg__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.Auct_Profiles_FromStg__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."Auct_Profiles_FromStg__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_Profiles_FromStg__dbt_tmp_temp_view"
    end


