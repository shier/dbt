{{ config(materialized='table',schema='dbo')}}
Select
	cast([MetaDataTypeID] as int) [MetaDataTypeID],
	cast([Name] as nvarchar(4000)) [Name],
	cast([Active] as int) [Active],
	cast([TableName] as nvarchar(4000)) [TableName],
	cast([ColumnName] as nvarchar(4000)) [ColumnName],
	cast([DisplayColumn] as nvarchar(4000)) [DisplayColumn] 
From stg.[Auct_MetaDataType_FinalView]