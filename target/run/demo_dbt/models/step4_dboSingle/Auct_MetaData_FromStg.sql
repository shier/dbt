
  
  if object_id ('"dbo"."Auct_MetaData_FromStg__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_MetaData_FromStg__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."Auct_MetaData_FromStg__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."Auct_MetaData_FromStg__dbt_tmp"
    end


   EXEC('create view dbo.Auct_MetaData_FromStg__dbt_tmp_temp_view as
    
Select
	cast([MetaDataID] as int) [MetaDataID],
	cast([MetaDataTypeID] as int) [MetaDataTypeID],
	cast([Value] as nvarchar(4000)) [Value],
	cast([Active] as int) [Active],
	cast([DateCreated] as datetime) [DateCreated] 
From stg.[Auct_MetaData_FinalView]
    ');

  CREATE TABLE "dbo"."Auct_MetaData_FromStg__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.Auct_MetaData_FromStg__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."Auct_MetaData_FromStg__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_MetaData_FromStg__dbt_tmp_temp_view"
    end


