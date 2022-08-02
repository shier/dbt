
  
  if object_id ('"dbo_stg"."stg.AH_Addresses_raw__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo_stg"."stg.AH_Addresses_raw__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo_stg"."stg.AH_Addresses_raw__dbt_tmp"','U') is not null
    begin
    drop table "dbo_stg"."stg.AH_Addresses_raw__dbt_tmp"
    end


   EXEC('create view dbo_stg.stg.AH_Addresses_raw__dbt_tmp_temp_view as
    

select * from AH_Addresses_Ex
    ');

  CREATE TABLE "dbo_stg"."stg.AH_Addresses_raw__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo_stg.stg.AH_Addresses_raw__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo_stg"."stg.AH_Addresses_raw__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo_stg"."stg.AH_Addresses_raw__dbt_tmp_temp_view"
    end


