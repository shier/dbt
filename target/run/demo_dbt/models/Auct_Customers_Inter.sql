
  
  if object_id ('"stg"."Auct_Customers_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_Customers_Inter__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_Customers_Inter__dbt_tmp"','U') is not null
    begin
    drop table "stg"."Auct_Customers_Inter__dbt_tmp"
    end


   EXEC('create view stg.Auct_Customers_Inter__dbt_tmp_temp_view as
    
Select
	CONTACTTYPEID ContactTypeID,
	CONTACTID ContactID,
	CUSTOMERACCOUNTID CustomerAccountID,
	cast(NAME as nvarchar(4000)) Name,
	cast(EMAILADDRESS as nvarchar(4000)) EmailAddress,
	cast(Type as nvarchar(4000)) Type
From Auct_Customers_Raw
    ');

  CREATE TABLE "stg"."Auct_Customers_Inter__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_Customers_Inter__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."Auct_Customers_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_Customers_Inter__dbt_tmp_temp_view"
    end


