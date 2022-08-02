
  
  if object_id ('"stg"."Auct_AvailableModel_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_AvailableModel_Inter__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_AvailableModel_Inter__dbt_tmp"','U') is not null
    begin
    drop table "stg"."Auct_AvailableModel_Inter__dbt_tmp"
    end


   EXEC('create view stg.Auct_AvailableModel_Inter__dbt_tmp_temp_view as
    
Select
	CREATED Created,
	AVAILABLEMODELID AvailableModelID,
	CARMODELID CarModelID,
	CARMAKEID CarMakeID,
	UPDATEEVENTID UpdateEventID,
	cast(ALLOWDROPDOWN as nvarchar(4000)) AllowDropDown
From Auct_AvailableModel_Raw
    ');

  CREATE TABLE "stg"."Auct_AvailableModel_Inter__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_AvailableModel_Inter__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."Auct_AvailableModel_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_AvailableModel_Inter__dbt_tmp_temp_view"
    end


