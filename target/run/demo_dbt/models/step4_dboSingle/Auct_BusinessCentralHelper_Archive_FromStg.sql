
  
  if object_id ('"dbo"."Auct_BusinessCentralHelper_Archive_FromStg__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_BusinessCentralHelper_Archive_FromStg__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."Auct_BusinessCentralHelper_Archive_FromStg__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."Auct_BusinessCentralHelper_Archive_FromStg__dbt_tmp"
    end


   EXEC('create view dbo.Auct_BusinessCentralHelper_Archive_FromStg__dbt_tmp_temp_view as
    
Select
	cast([BusinessCentralArchiveID] as int) [BusinessCentralArchiveID],
	cast([BusinessCentralHelper_MethodName] as nvarchar(4000)) [BusinessCentralHelper_MethodName],
	cast([BusinessCentralHelper_ParaMeterTypeName] as nvarchar(4000)) [BusinessCentralHelper_ParaMeterTypeName],
	cast([BusinessCentralHelper_ParaMeterPayload] as nvarchar(4000)) [BusinessCentralHelper_ParaMeterPayload],
	cast([InvoiceID] as int) [InvoiceID],
	cast([BusinessCentral_Documentno] as nvarchar(4000)) [BusinessCentral_Documentno],
	cast([Processed] as bit) [Processed] 
From stg.[Auct_BusinessCentralHelper_Archive_FinalView]
    ');

  CREATE TABLE "dbo"."Auct_BusinessCentralHelper_Archive_FromStg__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.Auct_BusinessCentralHelper_Archive_FromStg__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."Auct_BusinessCentralHelper_Archive_FromStg__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_BusinessCentralHelper_Archive_FromStg__dbt_tmp_temp_view"
    end


