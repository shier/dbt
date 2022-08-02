
  
  if object_id ('"stg"."Auct_NavisionCustomerBuffer_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_NavisionCustomerBuffer_Inter__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_NavisionCustomerBuffer_Inter__dbt_tmp"','U') is not null
    begin
    drop table "stg"."Auct_NavisionCustomerBuffer_Inter__dbt_tmp"
    end


   EXEC('create view stg.Auct_NavisionCustomerBuffer_Inter__dbt_tmp_temp_view as
    
Select
	cast(NO as nvarchar(4000)) No,
	cast(NAME as nvarchar(4000)) Name,
	cast(NAME2 as nvarchar(4000)) Name2,
	cast(ADDRESS as nvarchar(4000)) Address,
	cast(EMAIL as nvarchar(4000)) Email,
	cast(HOMEPAGE as nvarchar(4000)) HomePage,
	cast(STATUSMESSAGE as nvarchar(4000)) StatusMessage,
	cast(ADDRESS2 as nvarchar(4000)) Address2,
	cast(CITY as nvarchar(4000)) City,
	cast(STATE as nvarchar(4000)) State,
	cast(COUNTRYCODE as nvarchar(4000)) CountryCode,
	cast(POSTCODE as nvarchar(4000)) PostCode,
	cast(PHONENO as nvarchar(4000)) Phoneno,
	STATUS Status,
	WROTETONAVISION WrotetoNavision
From Auct_NavisionCustomerBuffer_Raw
    ');

  CREATE TABLE "stg"."Auct_NavisionCustomerBuffer_Inter__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_NavisionCustomerBuffer_Inter__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."Auct_NavisionCustomerBuffer_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_NavisionCustomerBuffer_Inter__dbt_tmp_temp_view"
    end


