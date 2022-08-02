
  
  if object_id ('"stg"."Auct_Reporting_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_Reporting_Inter__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_Reporting_Inter__dbt_tmp"','U') is not null
    begin
    drop table "stg"."Auct_Reporting_Inter__dbt_tmp"
    end


   EXEC('create view stg.Auct_Reporting_Inter__dbt_tmp_temp_view as
    
Select
	ParentReportingID ParentReportingID,
	ReportingID ReportingID,
	IsActive IsActive,
	DisplayOrder DisplayOrder,
	cast(Name as nvarchar(4000)) Name,
	cast(DataRetrievalClassName as nvarchar(4000)) DataRetrievalClassName
From Auct_Reporting_Raw
    ');

  CREATE TABLE "stg"."Auct_Reporting_Inter__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_Reporting_Inter__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."Auct_Reporting_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_Reporting_Inter__dbt_tmp_temp_view"
    end


