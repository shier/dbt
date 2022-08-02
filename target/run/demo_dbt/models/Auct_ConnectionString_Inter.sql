
  
  if object_id ('"stg"."Auct_ConnectionString_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_ConnectionString_Inter__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_ConnectionString_Inter__dbt_tmp"','U') is not null
    begin
    drop table "stg"."Auct_ConnectionString_Inter__dbt_tmp"
    end


   EXEC('create view stg.Auct_ConnectionString_Inter__dbt_tmp_temp_view as
    
Select
	cast(CONNECTIONSTRING as nvarchar(4000)) ConnectionString,
	cast(ENVIRONMENT as nvarchar(4000)) Environment,
	cast(TYPENAME as nvarchar(4000)) TypeName
From Auct_ConnectionString_Raw
    ');

  CREATE TABLE "stg"."Auct_ConnectionString_Inter__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_ConnectionString_Inter__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."Auct_ConnectionString_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_ConnectionString_Inter__dbt_tmp_temp_view"
    end


