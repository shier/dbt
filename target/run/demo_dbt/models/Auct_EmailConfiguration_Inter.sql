
  
  if object_id ('"stg"."Auct_EmailConfiguration_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_EmailConfiguration_Inter__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_EmailConfiguration_Inter__dbt_tmp"','U') is not null
    begin
    drop table "stg"."Auct_EmailConfiguration_Inter__dbt_tmp"
    end


   EXEC('create view stg.Auct_EmailConfiguration_Inter__dbt_tmp_temp_view as
    
Select
	cast(HOST as nvarchar(4000)) Host,
	cast(DOMAIN as nvarchar(4000)) Domain,
	cast(USERNAME as nvarchar(4000)) UserName,
	cast(PASSWORD as nvarchar(4000)) Password
From Auct_EmailConfiguration_Raw
    ');

  CREATE TABLE "stg"."Auct_EmailConfiguration_Inter__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_EmailConfiguration_Inter__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."Auct_EmailConfiguration_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_EmailConfiguration_Inter__dbt_tmp_temp_view"
    end


