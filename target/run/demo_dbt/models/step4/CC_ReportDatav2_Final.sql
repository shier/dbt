
  
  if object_id ('"stg"."CC_ReportDatav2_Final__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."CC_ReportDatav2_Final__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."CC_ReportDatav2_Final__dbt_tmp"','U') is not null
    begin
    drop table "stg"."CC_ReportDatav2_Final__dbt_tmp"
    end


   EXEC('create view stg.CC_ReportDatav2_Final__dbt_tmp_temp_view as
    
Select
	[IsinplaceReport],[Content],[GcRecord],[OptimisticLockField],[PredefinedReportType],[OID],[OBJectTypeName],[Name],[ParaMetersoBJectTypeName] 
From [CC_ReportDatav2_Incr]
    ');

  CREATE TABLE "stg"."CC_ReportDatav2_Final__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.CC_ReportDatav2_Final__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."CC_ReportDatav2_Final__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."CC_ReportDatav2_Final__dbt_tmp_temp_view"
    end

