
  
  if object_id ('"stg"."Auct_AddressTypes_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_AddressTypes_Inter__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_AddressTypes_Inter__dbt_tmp"','U') is not null
    begin
    drop table "stg"."Auct_AddressTypes_Inter__dbt_tmp"
    end


   EXEC('create view stg.Auct_AddressTypes_Inter__dbt_tmp_temp_view as
    
Select
	CREATED Created,
	ADDRESSTYPEID AddressTypeID,
	UPDATEEVENTID UpdateEventID,
	LEVEL Level,
	cast(NAME as nvarchar(4000)) Name,
	cast(ICON as nvarchar(4000)) Icon,
	cast(PROCESSORNAME as nvarchar(4000)) ProcessorName
From Auct_AddressTypes_Raw
    ');

  CREATE TABLE "stg"."Auct_AddressTypes_Inter__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_AddressTypes_Inter__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."Auct_AddressTypes_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_AddressTypes_Inter__dbt_tmp_temp_view"
    end


