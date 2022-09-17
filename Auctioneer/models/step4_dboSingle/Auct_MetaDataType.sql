{{ config(materialized='table',schema='dbo')}}
Select
	cast([MetaDataTypeID] as int) [METADATATYPEID],
	cast([Name] as nvarchar(4000)) [NAME],
	cast([Active] as int) [ACTIVE],
	cast([TableName] as nvarchar(4000)) [TABLENAME],
	cast([ColumnName] as nvarchar(4000)) [COLUMNNAME],
	cast([DisplayColumn] as nvarchar(4000)) [DISPLAYCOLUMN] 
From stg.[Auct_MetaDataType_FinalView]