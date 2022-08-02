
  
  if object_id ('"dbo"."my_first_dbt_model__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."my_first_dbt_model__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."my_first_dbt_model__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."my_first_dbt_model__dbt_tmp"
    end


   EXEC('create view dbo.my_first_dbt_model__dbt_tmp_temp_view as
    /*
    Welcome to your first dbt model!
    Did you know that you can also configure models directly within SQL files?
    This will override configurations stated in dbt_project.yml

    Try changing "table" to "view" below
*/



with source_data as (

    select 1 as id
    union all
    select null as id

)

select *
from source_data

/*
    Uncomment the line below to remove records with null `id` values
*/

-- where id is not null
    ');

  CREATE TABLE "dbo"."my_first_dbt_model__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.my_first_dbt_model__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."my_first_dbt_model__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."my_first_dbt_model__dbt_tmp_temp_view"
    end


