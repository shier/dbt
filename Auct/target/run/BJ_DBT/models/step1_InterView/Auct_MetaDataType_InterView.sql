create view "stg"."Auct_MetaDataType_InterView__dbt_tmp" as
    
Select
	[METADATATYPEID] [MetaDataTypeID],
	cast([NAME] as nvarchar(4000)) [Name],
	[ACTIVE] [Active],
	cast([TABLENAME] as nvarchar(4000)) [TableName],
	cast([COLUMNNAME] as nvarchar(4000)) [ColumnName],
	cast([DISPLAYCOLUMN] as nvarchar(4000)) [DisplayColumn]
From stg.[Auct_MetaDataType_Raw]
