
  
  if object_id ('"stg"."Auct_Address_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_Address_Inter__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_Address_Inter__dbt_tmp"','U') is not null
    begin
    drop table "stg"."Auct_Address_Inter__dbt_tmp"
    end


   EXEC('create view stg.Auct_Address_Inter__dbt_tmp_temp_view as
    
Select
	cast(ADDRESS1 as nvarchar(4000)) Address1,
	cast(ADDRESS2 as nvarchar(4000)) Address2,
	cast(CITY as nvarchar(4000)) City,
	cast(STATEPROVINCE as nvarchar(4000)) StateProvince,
	cast(POSTALCODE as nvarchar(4000)) PostalCode,
	cast(CAREOF as nvarchar(4000)) Careof,
	cast(ACTIVE as nvarchar(4000)) Active,
	cast(COUNTY as nvarchar(4000)) County,
	cast(WEBADDRESSID as nvarchar(4000)) WeBaddressID,
	CREATED Created,
	ADDRESSID AddressID,
	COUNTRY Country,
	UPDATEEVENTID UpdateEventID
From Auct_Address_Raw
    ');

  CREATE TABLE "stg"."Auct_Address_Inter__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_Address_Inter__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."Auct_Address_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_Address_Inter__dbt_tmp_temp_view"
    end


