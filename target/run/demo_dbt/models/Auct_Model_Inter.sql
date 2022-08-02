
  
  if object_id ('"stg"."Auct_Model_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_Model_Inter__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_Model_Inter__dbt_tmp"','U') is not null
    begin
    drop table "stg"."Auct_Model_Inter__dbt_tmp"
    end


   EXEC('create view stg.Auct_Model_Inter__dbt_tmp_temp_view as
    
Select
	MODELID ModelID,
	MAKEID MakeID,
	cast(DROPDOWNTEXT as nvarchar(4000)) DropDownText,
	cast(DISPLAYTEXT as nvarchar(4000)) DisplayText,
	cast(ACTIVE as nvarchar(4000)) Active
From Auct_Model_Raw
    ');

  CREATE TABLE "stg"."Auct_Model_Inter__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_Model_Inter__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."Auct_Model_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_Model_Inter__dbt_tmp_temp_view"
    end


