
  
  if object_id ('"stg"."Auct_ConsignmentForms_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_ConsignmentForms_Inter__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_ConsignmentForms_Inter__dbt_tmp"','U') is not null
    begin
    drop table "stg"."Auct_ConsignmentForms_Inter__dbt_tmp"
    end


   EXEC('create view stg.Auct_ConsignmentForms_Inter__dbt_tmp_temp_view as
    
Select
	cast(FORMNAME as nvarchar(4000)) FormName,
	cast(FORMKEY as nvarchar(4000)) FormKey,
	cast(FILEPATH as nvarchar(4000)) FilePath,
	CONSIGNMENTFORMID ConsignmentFormID,
	CONSIGNMENTID ConsignmentID,
	USERID UserID,
	SIGNSTARTEDDATETIME SignStartedDateTime,
	SIGNFINISHEDDATETIME SignfinishedDateTime
From Auct_ConsignmentForms_Raw
    ');

  CREATE TABLE "stg"."Auct_ConsignmentForms_Inter__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_ConsignmentForms_Inter__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."Auct_ConsignmentForms_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_ConsignmentForms_Inter__dbt_tmp_temp_view"
    end


