
  
  if object_id ('"stg"."Auct_Forms_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_Forms_Inter__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_Forms_Inter__dbt_tmp"','U') is not null
    begin
    drop table "stg"."Auct_Forms_Inter__dbt_tmp"
    end


   EXEC('create view stg.Auct_Forms_Inter__dbt_tmp_temp_view as
    
Select
	[FORMID] [FormID],
	[ACTIVE] [Active],
	cast([FILENAME] as nvarchar(4000)) [FileName],
	[DEPARTMENTID] [DepartmentID],
	cast([DISPLAYNAME] as nvarchar(4000)) [DisplayName],
	cast([DESCRIPTION] as nvarchar(4000)) [Description]
From stg.[Auct_Forms_Raw]
    ');

  CREATE TABLE "stg"."Auct_Forms_Inter__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_Forms_Inter__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."Auct_Forms_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_Forms_Inter__dbt_tmp_temp_view"
    end


