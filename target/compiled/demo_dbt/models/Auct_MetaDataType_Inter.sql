
Select
	METADATATYPEID MetaDataTypeID,
	ACTIVE Active,
	cast(NAME as nvarchar(4000)) Name,
	cast(TABLENAME as nvarchar(4000)) TableName,
	cast(COLUMNNAME as nvarchar(4000)) ColumnName,
	cast(DISPLAYCOLUMN as nvarchar(4000)) DisplayColumn
From Auct_MetaDataType_Raw