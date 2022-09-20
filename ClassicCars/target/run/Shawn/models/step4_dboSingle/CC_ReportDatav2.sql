
  
  if object_id ('"dbo"."CC_ReportDatav2__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."CC_ReportDatav2__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."CC_ReportDatav2__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."CC_ReportDatav2__dbt_tmp"
    end


   EXEC('create view dbo.CC_ReportDatav2__dbt_tmp_temp_view as
    
Select
	cast([OptimisticLockField] as int) [OptimisticLockField],
	cast([GcRecord] as int) [GCRecord],
	cast([IsinplaceReport] as bit) [IsInplaceReport],
	cast([OID] as nvarchar(4000)) [Oid],
	cast([OBJectTypeName] as nvarchar(4000)) [ObjectTypeName],
	cast([Name] as nvarchar(4000)) [Name],
	cast([ParaMetersoBJectTypeName] as nvarchar(4000)) [ParametersObjectTypeName],
	cast([PredefinedReportType] as nvarchar(4000)) [PredefinedReportType],
	cast([Content] as varbinary(8000)) [Content] 
From stg.[CC_ReportDatav2_FinalView]
    ');

  CREATE TABLE "dbo"."CC_ReportDatav2__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.CC_ReportDatav2__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."CC_ReportDatav2__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."CC_ReportDatav2__dbt_tmp_temp_view"
    end


