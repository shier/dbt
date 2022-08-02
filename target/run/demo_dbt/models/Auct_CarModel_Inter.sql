
  
  if object_id ('"stg"."Auct_CarModel_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_CarModel_Inter__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_CarModel_Inter__dbt_tmp"','U') is not null
    begin
    drop table "stg"."Auct_CarModel_Inter__dbt_tmp"
    end


   EXEC('create view stg.Auct_CarModel_Inter__dbt_tmp_temp_view as
    
Select
	ACTIVE Active,
	WEBACTIVE WebActive,
	CREATED Created,
	CARMODELID CarModelID,
	CARTYPEID CarTypeID,
	UPDATEEVENTID UpdateEventID,
	cast(NAME as nvarchar(4000)) Name,
	cast(ROWGUID as nvarchar(4000)) RowGUID
From Auct_CarModel_Raw
    ');

  CREATE TABLE "stg"."Auct_CarModel_Inter__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_CarModel_Inter__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."Auct_CarModel_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_CarModel_Inter__dbt_tmp_temp_view"
    end


