
  
  if object_id ('"stg"."Auct_SparePartsType_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_SparePartsType_Inter__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_SparePartsType_Inter__dbt_tmp"','U') is not null
    begin
    drop table "stg"."Auct_SparePartsType_Inter__dbt_tmp"
    end


   EXEC('create view stg.Auct_SparePartsType_Inter__dbt_tmp_temp_view as
    
Select
	SPAREPARTSTYPEID SparePartsTypeID,
	UPDATEEVENTID UpdateEventID,
	CREATED Created,
	cast(NAME as nvarchar(4000)) Name,
	cast(INACTIVE as nvarchar(4000)) InActive
From Auct_SparePartsType_Raw
    ');

  CREATE TABLE "stg"."Auct_SparePartsType_Inter__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_SparePartsType_Inter__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."Auct_SparePartsType_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_SparePartsType_Inter__dbt_tmp_temp_view"
    end


