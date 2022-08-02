
  
  if object_id ('"stg"."Auct_SearchFor_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_SearchFor_Inter__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_SearchFor_Inter__dbt_tmp"','U') is not null
    begin
    drop table "stg"."Auct_SearchFor_Inter__dbt_tmp"
    end


   EXEC('create view stg.Auct_SearchFor_Inter__dbt_tmp_temp_view as
    
Select
	ACTIVE Active,
	SEARCHFORID SearchForID,
	cast(NAME as nvarchar(4000)) Name
From Auct_SearchFor_Raw
    ');

  CREATE TABLE "stg"."Auct_SearchFor_Inter__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_SearchFor_Inter__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."Auct_SearchFor_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_SearchFor_Inter__dbt_tmp_temp_view"
    end


