
  
  if object_id ('"stg"."Auct_Contactcontact_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_Contactcontact_Inter__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_Contactcontact_Inter__dbt_tmp"','U') is not null
    begin
    drop table "stg"."Auct_Contactcontact_Inter__dbt_tmp"
    end


   EXEC('create view stg.Auct_Contactcontact_Inter__dbt_tmp_temp_view as
    
Select
	CONTACTCONTACTID ContactcontactID,
	CONTACTTYPEID ContactTypeID,
	CUSTOMERACCOUNTID CustomerAccountID,
	UPDATEEVENTID UpdateEventID,
	CREATED Created,
	cast(CONTACTTITLE as nvarchar(4000)) ContactTitle
From Auct_Contactcontact_Raw
    ');

  CREATE TABLE "stg"."Auct_Contactcontact_Inter__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_Contactcontact_Inter__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."Auct_Contactcontact_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_Contactcontact_Inter__dbt_tmp_temp_view"
    end


