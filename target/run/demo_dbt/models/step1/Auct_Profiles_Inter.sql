
  
  if object_id ('"stg"."Auct_Profiles_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_Profiles_Inter__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_Profiles_Inter__dbt_tmp"','U') is not null
    begin
    drop table "stg"."Auct_Profiles_Inter__dbt_tmp"
    end


   EXEC('create view stg.Auct_Profiles_Inter__dbt_tmp_temp_view as
    
Select
	[PROFILEID] [ProfileID],
	cast([USERNAME] as nvarchar(4000)) [UserName],
	cast([APPLICATIONNAME] as nvarchar(4000)) [ApplicationName],
	cast([ISANONYMOUS] as nvarchar(4000)) [IsAnonymous],
	[LASTACTIVITYDATE] [LastActivityDate],
	[LASTUPDATEDDATE] [LastUpdateddate],
	[ISAUTHENTICATED] [IsAuthenticated]
From stg.[Auct_Profiles_Raw]
    ');

  CREATE TABLE "stg"."Auct_Profiles_Inter__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_Profiles_Inter__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."Auct_Profiles_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_Profiles_Inter__dbt_tmp_temp_view"
    end


