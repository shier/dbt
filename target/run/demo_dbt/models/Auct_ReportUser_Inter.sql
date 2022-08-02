
  
  if object_id ('"stg"."Auct_ReportUser_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_ReportUser_Inter__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_ReportUser_Inter__dbt_tmp"','U') is not null
    begin
    drop table "stg"."Auct_ReportUser_Inter__dbt_tmp"
    end


   EXEC('create view stg.Auct_ReportUser_Inter__dbt_tmp_temp_view as
    
Select
	cast(TITLE as nvarchar(4000)) Title,
	cast(CATEGORY as nvarchar(4000)) Category,
	cast(DESCRIPTION as nvarchar(4000)) Description,
	REPORTID ReportID,
	USERID UserID
From Auct_ReportUser_Raw
    ');

  CREATE TABLE "stg"."Auct_ReportUser_Inter__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_ReportUser_Inter__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."Auct_ReportUser_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_ReportUser_Inter__dbt_tmp_temp_view"
    end


