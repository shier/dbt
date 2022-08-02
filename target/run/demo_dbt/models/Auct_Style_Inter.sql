
  
  if object_id ('"stg"."Auct_Style_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_Style_Inter__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_Style_Inter__dbt_tmp"','U') is not null
    begin
    drop table "stg"."Auct_Style_Inter__dbt_tmp"
    end


   EXEC('create view stg.Auct_Style_Inter__dbt_tmp_temp_view as
    
Select
	cast(DROPDOWNTEXT as nvarchar(4000)) DropDownText,
	cast(DISPLAYTEXT as nvarchar(4000)) DisplayText,
	cast(ACTIVE as nvarchar(4000)) Active,
	STYLEID StyleID,
	MODELID ModelID
From Auct_Style_Raw
    ');

  CREATE TABLE "stg"."Auct_Style_Inter__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_Style_Inter__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."Auct_Style_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_Style_Inter__dbt_tmp_temp_view"
    end


