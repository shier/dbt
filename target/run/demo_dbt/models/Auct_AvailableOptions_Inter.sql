
  
  if object_id ('"stg"."Auct_AvailableOptions_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_AvailableOptions_Inter__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_AvailableOptions_Inter__dbt_tmp"','U') is not null
    begin
    drop table "stg"."Auct_AvailableOptions_Inter__dbt_tmp"
    end


   EXEC('create view stg.Auct_AvailableOptions_Inter__dbt_tmp_temp_view as
    
Select
	cast(ALLOWDROPDOWN as nvarchar(4000)) AllowDropDown,
	CREATED Created,
	AVAILABLEOPTIONSID AvailableOptionsID,
	CAROPTIONID CarOptionID,
	CARMODELID CarModelID,
	UPDATEEVENTID UpdateEventID
From Auct_AvailableOptions_Raw
    ');

  CREATE TABLE "stg"."Auct_AvailableOptions_Inter__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_AvailableOptions_Inter__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."Auct_AvailableOptions_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_AvailableOptions_Inter__dbt_tmp_temp_view"
    end


