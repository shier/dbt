
  
  if object_id ('"stg"."Auct_ActiveEmails_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_ActiveEmails_Inter__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_ActiveEmails_Inter__dbt_tmp"','U') is not null
    begin
    drop table "stg"."Auct_ActiveEmails_Inter__dbt_tmp"
    end


   EXEC('create view stg.Auct_ActiveEmails_Inter__dbt_tmp_temp_view as
    
Select
	cast(email as nvarchar(4000)) Email,
	cast(first_name as nvarchar(4000)) First_Name,
	cast(last_name as nvarchar(4000)) Last_Name,
	cast(ongage_status as nvarchar(4000)) Ongage_Status
From Auct_ActiveEmails_Raw
    ');

  CREATE TABLE "stg"."Auct_ActiveEmails_Inter__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_ActiveEmails_Inter__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."Auct_ActiveEmails_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_ActiveEmails_Inter__dbt_tmp_temp_view"
    end


