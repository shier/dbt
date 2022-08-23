
  
  if object_id ('"dbo"."CC_ReportDatav2_FromStg__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."CC_ReportDatav2_FromStg__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."CC_ReportDatav2_FromStg__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."CC_ReportDatav2_FromStg__dbt_tmp"
    end


   EXEC('create view dbo.CC_ReportDatav2_FromStg__dbt_tmp_temp_view as
    
Select
	cast([OptimisticLockField] as int) [OptimisticLockField],
	cast([GcRecord] as int) [GcRecord],
	cast([IsinplaceReport] as bit) [IsinplaceReport],
	cast([OID] as nvarchar(4000)) [OID],
	cast([OBJectTypeName] as nvarchar(4000)) [OBJectTypeName],
	cast([Name] as nvarchar(4000)) [Name],
	cast([ParaMetersoBJectTypeName] as nvarchar(4000)) [ParaMetersoBJectTypeName],
	cast([PredefinedReportType] as nvarchar(4000)) [PredefinedReportType],
	cast([Content] as varbinary(8000)) [Content] 
From stg.[CC_ReportDatav2_FinalView]
    ');

  CREATE TABLE "dbo"."CC_ReportDatav2_FromStg__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.CC_ReportDatav2_FromStg__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."CC_ReportDatav2_FromStg__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."CC_ReportDatav2_FromStg__dbt_tmp_temp_view"
    end


