
  
  if object_id ('"stg"."Auct_Request_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_Request_Inter__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_Request_Inter__dbt_tmp"','U') is not null
    begin
    drop table "stg"."Auct_Request_Inter__dbt_tmp"
    end


   EXEC('create view stg.Auct_Request_Inter__dbt_tmp_temp_view as
    
Select
	sent_date Sent_Date,
	id ID,
	cast(publication as nvarchar(4000)) Publication,
	cast(description as nvarchar(4000)) Description
From Auct_Request_Raw
    ');

  CREATE TABLE "stg"."Auct_Request_Inter__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_Request_Inter__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."Auct_Request_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_Request_Inter__dbt_tmp_temp_view"
    end


