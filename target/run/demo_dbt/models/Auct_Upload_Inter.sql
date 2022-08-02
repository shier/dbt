
  
  if object_id ('"stg"."Auct_Upload_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_Upload_Inter__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_Upload_Inter__dbt_tmp"','U') is not null
    begin
    drop table "stg"."Auct_Upload_Inter__dbt_tmp"
    end


   EXEC('create view stg.Auct_Upload_Inter__dbt_tmp_temp_view as
    
Select
	COUNTRYID CountryID,
	EVENTID EventID,
	ACTIVE Active,
	MAILLISTUPLOADID MailListUploadID,
	CREATED Created,
	cast(ADDRESS2 as nvarchar(4000)) Address2,
	cast(CITY as nvarchar(4000)) City,
	cast(STATEPROVINCE as nvarchar(4000)) StateProvince,
	cast(COUNTY as nvarchar(4000)) County,
	cast(CAREOF as nvarchar(4000)) Careof,
	cast(POSTALCODE as nvarchar(4000)) PostalCode,
	cast(ERRORMESSAGE as nvarchar(4000)) ErrorMessage,
	cast(TRANSACTIONID as nvarchar(4000)) TransactionID,
	cast(FIRSTNAME as nvarchar(4000)) FirstName,
	cast(LASTNAME as nvarchar(4000)) LastName,
	cast(MIDDLE as nvarchar(4000)) Middle,
	cast(ADDRESS1 as nvarchar(4000)) Address1
From Auct_Upload_Raw
    ');

  CREATE TABLE "stg"."Auct_Upload_Inter__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_Upload_Inter__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."Auct_Upload_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_Upload_Inter__dbt_tmp_temp_view"
    end


