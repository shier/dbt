
  
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
	[ReportingID] [ReportingID],
	cast([Name] as nvarchar(4000)) [Name],
	[ParentReportingID] [ParentReportingID],
	cast([DataRetrievalClassName] as nvarchar(4000)) [DataRetrievalClassName],
	[IsActive] [IsActive],
	[DisplayOrder] [DisplayOrder]
From stg.[Auct_Reporting_Raw]
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


