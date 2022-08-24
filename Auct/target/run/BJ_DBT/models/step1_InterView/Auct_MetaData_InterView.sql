create view "dbo_stg"."Auct_MetaData_InterView__dbt_tmp" as
    
Select
	[METADATAID] [MetaDataID],
	[METADATATYPEID] [MetaDataTypeID],
	cast([VALUE] as nvarchar(4000)) [Value],
	[ACTIVE] [Active],
	[DATECREATED] [DateCreated]
From stg.[Auct_MetaData_Raw]
