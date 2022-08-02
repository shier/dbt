
  
  if object_id ('"dbo"."AH_languages_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."AH_languages_Inter__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."AH_languages_Inter__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."AH_languages_Inter__dbt_tmp"
    end


   EXEC('create view dbo.AH_languages_Inter__dbt_tmp_temp_view as
    

select ID,UserID  from  stg.AH_languages_Inter
    ');

  CREATE TABLE "dbo"."AH_languages_Inter__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.AH_languages_Inter__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."AH_languages_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."AH_languages_Inter__dbt_tmp_temp_view"
    end


