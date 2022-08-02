
  
  if object_id ('"stg"."CC_ReportDatav2_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."CC_ReportDatav2_Inter__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."CC_ReportDatav2_Inter__dbt_tmp"','U') is not null
    begin
    drop table "stg"."CC_ReportDatav2_Inter__dbt_tmp"
    end


   EXEC('create view stg.CC_ReportDatav2_Inter__dbt_tmp_temp_view as
    
Select
	IsInplaceReport IsinplaceReport,
	cast(Content as nvarchar(4000)) Content,
	GCRecord GcRecord,
	OptimisticLockField OptimisticLockField,
	cast(PredefinedReportType as nvarchar(4000)) PredefinedReportType,
	cast(Oid as nvarchar(4000)) OID,
	cast(ObjectTypeName as nvarchar(4000)) OBJectTypeName,
	cast(Name as nvarchar(4000)) Name,
	cast(ParametersObjectTypeName as nvarchar(4000)) ParaMetersoBJectTypeName
From CC_ReportDatav2_Raw
    ');

  CREATE TABLE "stg"."CC_ReportDatav2_Inter__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.CC_ReportDatav2_Inter__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."CC_ReportDatav2_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."CC_ReportDatav2_Inter__dbt_tmp_temp_view"
    end


