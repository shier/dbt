
  
  if object_id ('"stg"."Auct_Phone_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_Phone_Inter__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_Phone_Inter__dbt_tmp"','U') is not null
    begin
    drop table "stg"."Auct_Phone_Inter__dbt_tmp"
    end


   EXEC('create view stg.Auct_Phone_Inter__dbt_tmp_temp_view as
    
Select
	PHONEID PhoneID,
	COUNTRYID CountryID,
	UPDATEEVENTID UpdateEventID,
	CREATED Created,
	cast(WEBPHONEID as nvarchar(4000)) WebPhoneID,
	cast(AREACODE as nvarchar(4000)) AreaCode,
	cast(PHONENUMBER as nvarchar(4000)) PhoneNumber,
	cast(ACTIVE as nvarchar(4000)) Active
From Auct_Phone_Raw
    ');

  CREATE TABLE "stg"."Auct_Phone_Inter__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_Phone_Inter__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."Auct_Phone_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_Phone_Inter__dbt_tmp_temp_view"
    end


