
  
  if object_id ('"stg"."Auct_ReportLogging_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_ReportLogging_Inter__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_ReportLogging_Inter__dbt_tmp"','U') is not null
    begin
    drop table "stg"."Auct_ReportLogging_Inter__dbt_tmp"
    end


   EXEC('create view stg.Auct_ReportLogging_Inter__dbt_tmp_temp_view as
    
Select
	cast([ID] as nvarchar(4000)) [ID],
	[Created] [Created],
	cast([QueryString] as nvarchar(4000)) [QueryString],
	cast([Login] as nvarchar(4000)) [Login]
From stg.[Auct_ReportLogging_Raw]
    ');

  CREATE TABLE "stg"."Auct_ReportLogging_Inter__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_ReportLogging_Inter__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."Auct_ReportLogging_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_ReportLogging_Inter__dbt_tmp_temp_view"
    end


