
  
  if object_id ('"stg"."Auct_ContactSalutation_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_ContactSalutation_Inter__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_ContactSalutation_Inter__dbt_tmp"','U') is not null
    begin
    drop table "stg"."Auct_ContactSalutation_Inter__dbt_tmp"
    end


   EXEC('create view stg.Auct_ContactSalutation_Inter__dbt_tmp_temp_view as
    
Select
	cast(NAME as nvarchar(4000)) Name,
	CREATED Created,
	CONTACTSALUTATIONID ContactSalutationID,
	UPDATEEVENTID UpdateEventID
From Auct_ContactSalutation_Raw
    ');

  CREATE TABLE "stg"."Auct_ContactSalutation_Inter__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_ContactSalutation_Inter__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."Auct_ContactSalutation_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_ContactSalutation_Inter__dbt_tmp_temp_view"
    end


