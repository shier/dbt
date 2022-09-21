
  
  if object_id ('"dbo"."Auct_MetaDataType__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_MetaDataType__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."Auct_MetaDataType__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."Auct_MetaDataType__dbt_tmp"
    end


   EXEC('create view dbo.Auct_MetaDataType__dbt_tmp_temp_view as
    
Select
	cast([MetaDataTypeID] as int) [METADATATYPEID],
	cast([Name] as nvarchar(4000)) [NAME],
	cast([Active] as int) [ACTIVE],
	cast([TableName] as nvarchar(4000)) [TABLENAME],
	cast([ColumnName] as nvarchar(4000)) [COLUMNNAME],
	cast([DisplayColumn] as nvarchar(4000)) [DISPLAYCOLUMN] 
From stg.[Auct_MetaDataType_FinalView]
    ');

  CREATE TABLE "dbo"."Auct_MetaDataType__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.Auct_MetaDataType__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."Auct_MetaDataType__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."Auct_MetaDataType__dbt_tmp_temp_view"
    end


