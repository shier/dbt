
  
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
	cast([MetaDataTypeID] as int) [MetaDataTypeID],
	cast([Name] as nvarchar(4000)) [Name],
	cast([Active] as int) [Active],
	cast([TableName] as nvarchar(4000)) [TableName],
	cast([ColumnName] as nvarchar(4000)) [ColumnName],
	cast([DisplayColumn] as nvarchar(4000)) [DisplayColumn] 
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


